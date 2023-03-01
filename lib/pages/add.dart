import 'package:expense_app/pages/categories.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

import 'package:expense_app/models/categories.dart';
import 'package:expense_app/models/expenses.dart';
import 'package:expense_app/app.dart';
import 'package:expense_app/utility/recurrence.dart';

import '../utility/title.dart';

var recurrences = List.from(Recurrence.list);

class AddPage extends TitleWidget {
  const AddPage({super.key}) : super(title: "Add Page");

  @override
  Widget build(BuildContext context) {
    return const AddContent();
  }
}

class AddContent extends StatefulWidget {
  const AddContent({super.key});

  @override
  State<AddContent> createState() => _AddContentState();
}

class _AddContentState extends State<AddContent> {
  late TextEditingController _amountCtrl;
  late TextEditingController _noteCrl;

  List<CategoriesPage> categories = [];
  int _activeRecIndex = 0;
  int _activeCatIndex = 0;
  DateTime _activeDate = DateTime.now();
  bool get isSubmittable =>
      categories.isNotEmpty && _amountCtrl.text.isNotEmpty;

  @override
  void initState() {
    super.initState();

    _amountCtrl = TextEditingController();
    _noteCrl = TextEditingController();
    // categories = realm.all<Category>().toList();
  }

  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
      navigationBar: const CupertinoNavigationBar(
        backgroundColor: CupertinoColors.black,
        middle: Text("Add Page"),
      ),
      child: SafeArea(
          top: true,
          bottom: true,
          child: Container(
            width: double.infinity,
            height: double.infinity,
            padding: const EdgeInsets.all(12),
          )),
    );
  }
}
