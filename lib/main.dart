import 'package:flutter/material.dart';
import 'package:task_manager_apex/config/app/my_app.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:task_manager_apex/config/di/dependency_injection.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await setupGetIt();
  runApp(const ProviderScope(child: MyApp()));
}
