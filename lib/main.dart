import 'package:flutter/material.dart';
import 'appcolors.dart';
import 'setstate.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  final String title = 'Flutter State Management Techniques App';
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: AppColors.blue,
      ),
      home: SetStatePage(),
    );
  }
}
