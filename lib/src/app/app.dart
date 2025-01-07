import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../config/routes/app_pages.dart';
import '../config/themes/app_theme.dart';

class MolhoooooApp extends StatelessWidget {
  const MolhoooooApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Molhooooo',
      darkTheme: AppTheme.lightTheme,
      theme: AppTheme.lightTheme,
      onGenerateRoute: AppPages.generateRoute,
    );
  }
}
