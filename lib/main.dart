import 'package:rescan/core/di/di.dart';
import 'package:rescan/core/routing/router.dart';
import 'package:rescan/core/theme/theme.dart';
import 'package:rescan/initialize_app.dart';
import 'package:flutter/material.dart';

void main() {
  setupDependencies();
  initializeApp();
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      title: 'ReScan',
      routerConfig: goRouter,
      theme: theme,
    );
  }
}
