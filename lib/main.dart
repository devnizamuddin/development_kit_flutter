import 'package:ansicolor/ansicolor.dart';
import 'package:flutter/material.dart';

import 'development_kit_app.dart';

void main() {
  ansiColorDisabled = false;
  WidgetsFlutterBinding.ensureInitialized();
  runApp(const DevelopmentKitApp());
}
