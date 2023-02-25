import 'package:expense_app/utility/title.dart';
import 'package:flutter/material.dart';

import 'package:expense_app/pages/add.dart';
import 'package:expense_app/pages/expenses.dart';
import 'package:expense_app/pages/report.dart';
import 'package:expense_app/pages/settings.dart';

class NavControl extends StatefulWidget {
  const NavControl({super.key});

  @override
  State<NavControl> createState() => _NavControlState();
}

class _NavControlState extends State<NavControl> {
  var ind = 0;
  void _onTouchedItem(int val) {
    setState(() {
      ind = val;
    });
  }

  static const List<TitleWidget> _pages = [
    ExpensePage(),
    ReportPage(),
    AddPage(),
    SettingsPage()
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(_pages[ind].title),
      ),
      backgroundColor: Colors.green,
      body: _pages[ind],
      bottomNavigationBar: BottomNavigationBar(
        selectedItemColor: Colors.lightBlueAccent,
        unselectedItemColor: Colors.blueGrey,
        type: BottomNavigationBarType.shifting,
        items: const [
          BottomNavigationBarItem(
              label: "Expense", icon: Icon(Icons.money_rounded)),
          BottomNavigationBarItem(
              label: "Report", icon: Icon(Icons.signal_cellular_alt_sharp)),
          BottomNavigationBarItem(
              label: "Add", icon: Icon(Icons.add_circle_outline)),
          BottomNavigationBarItem(
              label: "Settings", icon: Icon(Icons.settings)),
        ],
        currentIndex: ind,
        onTap: _onTouchedItem,
      ),
    );
  }
}
