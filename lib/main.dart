import 'package:flutter/material.dart';
import 'package:task_manager_apex/config/app/my_app.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

void main() => runApp(
   const ProviderScope(child: MyApp()),
);

