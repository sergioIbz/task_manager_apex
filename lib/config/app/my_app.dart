import 'package:flutter/material.dart';
import 'package:task_manager_apex/config/theme/custom_theme.dart';

import '../navigation/router.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      title: 'Task Manager',
      theme: CustomTheme.theme,
      routerConfig: appRouter,

    );
  }
}
