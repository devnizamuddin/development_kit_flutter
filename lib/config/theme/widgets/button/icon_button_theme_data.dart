part of '../../theme.dart';

class MsIconButtonThemeData extends IconButtonThemeData {
  MsIconButtonThemeData.light()
      : super(
          style: IconButton.styleFrom(
            iconSize: 24,
            padding: const EdgeInsets.all(16),
            shape: const CircleBorder(),
            elevation: 2,
          ),
        );
  MsIconButtonThemeData.dark()
      : super(
          style: IconButton.styleFrom(
            iconSize: 24,
            padding: const EdgeInsets.all(16),
            shape: const CircleBorder(),
            elevation: 2,
          ),
        );
}
