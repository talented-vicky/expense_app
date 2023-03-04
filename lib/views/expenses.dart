import 'package:flutter/material.dart';

import 'package:expense_app/utility/title.dart';

class ExpensePage extends TitleWidget {
  const ExpensePage({super.key}) : super(title: "Expense Page");

  @override
  Widget build(BuildContext context) {
    return const Text("Expense");
  }
}
