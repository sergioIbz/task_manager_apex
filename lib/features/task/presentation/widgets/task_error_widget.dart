import 'package:flutter/material.dart';

class TaskErrorWidget extends StatelessWidget {
  final String error;
  const TaskErrorWidget({this.error='error',super.key});

  @override
  Widget build(BuildContext context) {
    return Center(child: Text(error),);
  }
}