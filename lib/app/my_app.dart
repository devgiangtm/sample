import 'package:flutter/material.dart';
import 'package:sample/presentation/screen/expensive/expenses.dart';
import 'package:sample/presentation/screen/splash/sc_splash.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(useMaterial3: true),
      home: Expenses(),
    );
  }
}
