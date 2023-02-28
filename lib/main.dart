import 'package:expense_app/navigation.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Expense tracker App',
        theme: ThemeData(primaryColor: Colors.black, canvasColor: Colors.black),
        home: const NavControl());
  }
}
