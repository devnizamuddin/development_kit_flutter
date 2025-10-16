import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:path_provider/path_provider.dart';
import 'package:open_file/open_file.dart';
import 'package:url_launcher/url_launcher.dart';

import '../../shared/enums/mime_type.dart';

class FileService {
  final Dio _dio = Dio();
  final ValueNotifier<double> progress = ValueNotifier(0.0);

  Future<String> download(String url, String filename) async {
    final dir = await getApplicationDocumentsDirectory();
    final filePath = '${dir.path}/$filename';

    await _dio.download(
      url,
      filePath,
      onReceiveProgress: (received, total) {
        if (total != -1) progress.value = received / total;
      },
    );
    return filePath;
  }

  void showProgressIndicator(BuildContext context) {
    showDialog(
      context: context,
      barrierDismissible: false,
      builder: (_) => AlertDialog(
        title: const Text('Downloading...'),
        content: ValueListenableBuilder<double>(
          valueListenable: progress,
          builder: (context, value, child) {
            final percent = (value * 100).toStringAsFixed(0);
            debugPrint('Download progress: $percent%');
            if (value >= 1.0) {
              Navigator.of(context).pop();
            }
            return Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                LinearProgressIndicator(value: value),
                const SizedBox(height: 12),
                Text('$percent% completed'),
              ],
            );
          },
        ),
      ),
    );
  }

  Future<void> openFile(String filePath) async {
    await OpenFile.open(filePath, type: getMimeType(filePath));
  }

  String getMimeType(String filePath) {
    final extension = filePath.split('.').last.toLowerCase();
    return MimeType.fromExtension(extension);
  }

  Future<void> viewFileOnWeb({
    required String url,
    BuildContext? context,
  }) async {
    final uri = Uri.tryParse(url);
    if (uri != null && await canLaunchUrl(uri)) {
      await launchUrl(uri, mode: LaunchMode.platformDefault);
    } else if (context != null) {
      if (!context.mounted) return;
      ScaffoldMessenger.of(
        context,
      ).showSnackBar(SnackBar(content: Text('Cannot open URL: $url')));
    }
  }

  void dispose() {
    progress.dispose();
  }
}
