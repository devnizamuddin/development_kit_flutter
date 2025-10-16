import 'dart:convert';

import 'package:ansicolor/ansicolor.dart';
import 'package:flutter/foundation.dart';

class Log {
  static final Log _instance = Log._internal();

  factory Log() => _instance;

  Log._internal();

  static const bool isDebugOnly = true;

  /*
   * ┏==================================================================================================┓
   * ┃                                      Private log functions                                       ┃
   * ┗==================================================================================================┛
   */

  static void _log(
    String message, {
    required String title,
    AnsiPen? borderColor,
    AnsiPen? textColor,
    String? tag,
    int stackLevel = 4, 
  }) {
    if (isDebugOnly && !kDebugMode) return;
    final fullTag = tag ?? _getCaller(stackLevel);
    final fullTitle = fullTag != null ? '$title [$fullTag]' : title;

    _printBoxedMessage(
      message,
      title: fullTitle,
      textColor: textColor,
      borderColor: borderColor,
    );
  }

  static String? _getCaller([int level = 4]) {
    try {
      final traceLines = StackTrace.current.toString().split('\n');
      if (traceLines.length > level) {
        final traceLine = traceLines[level];
        final regex = RegExp(r'^#\d+\s+(.+?) \((.+?):(\d+):\d+\)$');
        final match = regex.firstMatch(traceLine);
        if (match != null) {
          final function = match.group(1);
          final file = match.group(2)?.split('/').last;
          final line = match.group(3);
          return '$function in $file:$line';
        }
      }
    } catch (_) {}
    return null;
  }

  /*
   * ┏==================================================================================================┓
   * ┃                                      Public Log Functionality                                    ┃
   * ┗==================================================================================================┛
   */

  static void info({
    String? tag,
    required String message,
  }) {
    _log(
      message,
      title: 'INFO',
      textColor: AnsiPen()..white(bold: true),
      tag: tag,
    );
  }

  static void success({
    String? tag,
    required String message,
  }) {
    _log(
      message,
      title: 'SUCCESS',
      textColor: AnsiPen()..green(),
      tag: tag,
    );
  }

  static void warning({
    String? tag,
    required String message,
  }) {
    _log(
      message,
      title: 'WARNING',
      textColor: AnsiPen()..yellow(),
      tag: tag,
    );
  }

  static void error({
    String? tag,
    StackTrace? stackTrace,
    required Object error, // <- now non-nullable
  }) {
    if (isDebugOnly && !kDebugMode) return;

    // Build error message
    final buffer = StringBuffer();
    buffer.writeln(error.toString());

    if (stackTrace != null) {
      buffer.writeln('\nStackTrace:');
      buffer.writeln(stackTrace.toString());
    }

    _log(
      buffer.toString(),
      title: 'ERROR',
      borderColor: AnsiPen()..red(),
      textColor: AnsiPen()..red(bold: true),
      tag: tag,
      stackLevel: stackTrace == null ? 5 : 4,
    );
  }

  static void special({required String message, String? tag}) {
    _log(
      message,
      title: 'SPECIAL',
      textColor: AnsiPen()..magenta(),
      tag: tag,
    );
  }

  static void map({
    String? tag,
    required Map<String, dynamic> map,
  }) {
    if (isDebugOnly && !kDebugMode) return;
    final time = DateTime.now().toIso8601String();
    _printBoxedJson(
      map,
      title: tag != null ? 'Map [$tag]' : 'Map [${_getCaller()}] @ $time',
    );
  }

  static void listOfMap({
    String? tag,
    required List<Map<String, dynamic>> list,
  }) {
    if (isDebugOnly && !kDebugMode) return;
    _printBoxedList(
      list,
      title: tag != null ? 'List [$tag]' : 'List',
    );
  }

  /*
   * ┏==================================================================================================┓
   * ┃                                  Private Debug Printing Section                                  ┃
   * ┗==================================================================================================┛
   */

  static final AnsiPen defaultTextColor = AnsiPen()..white(bold: true);
  static final AnsiPen defaultBorderColor = AnsiPen()..xterm(8);

  static void _printBoxedMessage(
    String message, {
    String title = 'INFO',
    AnsiPen? borderColor,
    AnsiPen? textColor,
  }) {
    final border = borderColor ?? defaultBorderColor;
    final text = textColor ?? defaultTextColor;

    final lines = message.trimRight().split('\n');
    final titleText = '[$title]';

    // Find max line length including title
    final contentLines = [...lines];
    final maxContentWidth = contentLines.fold<int>(
      titleText.length,
      (max, line) => line.length > max ? line.length : max,
    );

    final boxWidth = maxContentWidth + 4;

    final top = '╔═$titleText${'═' * (boxWidth - titleText.length - 1)}╗';
    final bottom = '╚${'═' * boxWidth}╝';

    debugPrint(border(top));
    for (final line in lines) {
      final padded = line.padRight(boxWidth - 2);
      debugPrint(border('║ ') + text(padded) + border(' ║'));
    }
    debugPrint(border(bottom));
  }

  static void _printFullBoxedMessage(
    String message, {
    String title = 'INFO',
    String? tag,
    AnsiPen? borderColor,
    AnsiPen? textColor,
  }) {
    final border = borderColor ?? defaultBorderColor;
    final text = textColor ?? defaultTextColor;

    final lines = message.trimRight().split('\n');
    final titleLine = tag != null ? '$title [$tag]' : title;

    final maxLineWidth = [
      titleLine.length,
      ...lines.map((line) => line.length),
    ].reduce((a, b) => a > b ? a : b);

    final boxWidth = maxLineWidth + 2;

    final top = '╔${'═' * boxWidth}╗';
    final titleRow = '║ ${titleLine.padRight(boxWidth - 1)}║';
    final divider = '├${'─' * boxWidth}┤';
    final bottom = '╚${'═' * boxWidth}╝';

    debugPrint(border(top));
    debugPrint(border(titleRow));
    debugPrint(border(divider));
    for (final line in lines) {
      debugPrint(
          border('║ ') + text(line.padRight(boxWidth - 1)) + border('║'));
    }
    debugPrint(border(bottom));
  }

  static void _printBoxedJson(
    Map<String, dynamic> data, {
    String title = 'JSON',
    AnsiPen? borderColor,
    AnsiPen? textColor,
  }) {
    final pretty = const JsonEncoder.withIndent('  ').convert(data);
    _printFullBoxedMessage(
      pretty,
      title: title,
      borderColor: borderColor,
      textColor: textColor,
    );
  }

  static void _printBoxedList(
    List<Map<String, dynamic>> items, {
    String title = 'List',
    AnsiPen? borderColor,
    AnsiPen? textColor,
  }) {
    for (int i = 0; i < items.length; i++) {
      final item = items[i];
      final itemTitle = '$title #${i + 1}';
      _printBoxedJson(item,
          title: itemTitle, borderColor: borderColor, textColor: textColor);
    }
  }
}
