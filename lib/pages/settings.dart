import 'package:expense_app/pages/categories.dart';
import 'package:flutter/material.dart';

import 'package:expense_app/utility/title.dart';

class SettingsPage extends TitleWidget {
  const SettingsPage({super.key}) : super(title: "Settings");

  showDeleteDialogue(BuildContext context) {
    Widget cancel = TextButton(
        child: const Text('Cancel'),
        onPressed: () {
          Navigator.of(context).pop();
        });
    Widget delete = TextButton(child: const Text('Erase'), onPressed: () {});
    AlertDialog alert = AlertDialog(
      title: const Text("Confirm Erase"),
      content: const Text("This action cannot be undone!"),
      actions: [cancel, delete],
    );
    showDialog(
        context: context,
        builder: (BuildContext context) {
          return alert;
        });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
        padding: const EdgeInsets.all(20),
        width: double.infinity,
        height: 155,
        // transformAlignment: Alignment.center,
        child: DecoratedBox(
          decoration: BoxDecoration(
              // border: const Border(bottom: BorderSide(color: Colors.white54)),
              borderRadius: BorderRadius.circular(20),
              boxShadow: const [
                BoxShadow(
                    color: Color.fromARGB(176, 158, 158, 158), spreadRadius: 2)
              ]),
          child: ListView(
            children: [
              ListTile(
                title: const Text(
                  "Categories",
                  style: TextStyle(color: Colors.white),
                ),
                trailing: const Icon(
                  Icons.arrow_forward_ios,
                  color: Colors.white,
                ),
                onTap: () {
                  Navigator.push<void>(
                    context,
                    MaterialPageRoute<void>(
                      builder: (BuildContext context) => const CategoriesPage(),
                    ),
                  );
                },
              ),
              Container(height: 2, color: Colors.white),
              ListTile(
                title: const Text(
                  "Clear Data",
                  style: TextStyle(color: Color.fromARGB(255, 233, 6, 6)),
                ),
                trailing: const Icon(
                  Icons.delete,
                  color: Colors.red,
                ),
                onTap: () {
                  showDeleteDialogue(context);
                },
              ),
            ],
          ),
        ));
  }
}
