import 'package:flutter/material.dart';

import 'config/router/app_router.dart';

class DevelopmentKitApp extends StatelessWidget {
  const DevelopmentKitApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      title: 'Development Kit',
      routerConfig: AppRouter.router,
      debugShowCheckedModeBanner: false,
    );
  }
}
