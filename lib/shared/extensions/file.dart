import 'dart:io';

/*
 * File Extension - Provides helpful properties for working with files.
 */

extension FileExtension on File {
  /*
   * Returns the file's extension.
   *
   * Example:
   * If the file path is "/downloads/archive.zip",
   * this will return "zip".
   */
  String get extension {
    return path.split('.').last;
  }

  /*
   * Returns the file name along with its extension.
   *
   * Example:
   * If the file path is "/user/docs/report.pdf",
   * this will return "report.pdf".
   */
  String get fileNameWithExtension {
    return path.split('/').last;
  }

  /*
   * Returns the file name without its extension.
   *
   * Example:
   * If the file path is "/user/docs/report.pdf",
   * this will return "report".
   */
  String get fileNameWithoutExtension {
    return path.split('/').last.split('.').first;
  }

  Future<String> toHumanReadableFileSize() async {
    int bytes = await length();
    if (bytes < 0) return 'Invalid size';

    List<String> units = ['B', 'KB', 'MB', 'GB', 'TB', 'PB', 'EB'];
    int unitIndex = 0;
    double size = double.parse(bytes.toString());

    while (size >= 1024 && unitIndex < units.length - 1) {
      size /= 1024;
      unitIndex++;
    }

    return '${size.floor()} ${units[unitIndex]}';
  }

  /*
   * Returns a string describing the file type along with its extension.
   *
   * The file type is inferred from common extensions:
   * - pdf, zip, docx => document
   * - jpg, jpeg, png => image
   * - txt, md, csv => text
   * - mp3, wav, aac => audio
   * - mp4, mov, avi => video
   *
   * If no match is found, "file.extension" is returned.
   *
   * Example:
   * If the file path is "/images/picture.jpg",
   * this will return "image.jpg".
   */
  String get fileTypeAsNameWithExtension {
    final extension = path.split('.').last;

    const documentExtensions = ['pdf', 'zip', 'docx'];
    const imageExtensions = ['jpg', 'jpeg', 'png'];
    const textExtensions = ['txt', 'md', 'csv'];
    const audioExtensions = ['mp3', 'wav', 'aac'];
    const videoExtensions = ['mp4', 'mov', 'avi'];

    if (documentExtensions.contains(extension)) return 'document.$extension';
    if (imageExtensions.contains(extension)) return 'image.$extension';
    if (textExtensions.contains(extension)) return 'text.$extension';
    if (audioExtensions.contains(extension)) return 'audio.$extension';
    if (videoExtensions.contains(extension)) return 'video.$extension';

    return 'file.$extension';
  }

  String get mimeType {
    final extension = path.split('.').last.toLowerCase();

    const mimeTypes = {
      'jpg': 'image/jpeg',
      'jpeg': 'image/jpeg',
      'png': 'image/png',
      'gif': 'image/gif',
      'bmp': 'image/bmp',
      'webp': 'image/webp',
      'svg': 'image/svg+xml',
      'mp4': 'video/mp4',
      'mov': 'video/quicktime',
      'avi': 'video/x-msvideo',
      'mp3': 'audio/mpeg',
      'wav': 'audio/wav',
      'ogg': 'audio/ogg',
      'pdf': 'application/pdf',
      'json': 'application/json',
      'txt': 'text/plain',
      'csv': 'text/csv',
      'html': 'text/html',
      'xml': 'application/xml',
      'zip': 'application/zip',
      'rar': 'application/vnd.rar',
      '7z': 'application/x-7z-compressed',
    };

    return mimeTypes[extension] ?? 'application/octet-stream';
  }
}
