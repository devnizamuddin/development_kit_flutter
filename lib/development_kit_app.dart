import 'package:development_kit_flutter/features/home/presentation/pages/home_page.dart';
import 'package:flutter/material.dart';

class DevelopmentKitApp extends StatelessWidget {
  const DevelopmentKitApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Development Kit ',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
      ),
      home: const HomePage(title: 'Home Page'),
    );
  }
}
