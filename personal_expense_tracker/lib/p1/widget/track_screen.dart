import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../model/m1.dart';
import 'chart/chart.dart';
import 'exp_list/exp_list.dart';
import 'new_exp.dart';

class Tracker extends StatefulWidget {
  static const String routeName = '/tracker';
  const Tracker({super.key});
  @override
  State<Tracker> createState() => _TrackerState();
}

class _TrackerState extends State<Tracker> {
  final List<Expense> _registeredTask = [
    Expense(
      title: 'krafton',
      category: Category.Yoga,
      amount: 15,
      date: DateTime.now(),
    ),
    Expense(
      title: 'Vaccation offer',
      category: Category.HealthCare,
      amount: 250,
      date: DateTime.now(),
    ),
  ];

  void _addExpense_click() {
    showModalBottomSheet(
      constraints: BoxConstraints(
        minHeight: 35,
        minWidth: 45,
        maxHeight: 654,
        maxWidth: 460,
      ),
      context: context,
      backgroundColor: Theme.of(context).cardColor,
      isScrollControlled: true,
      builder: (ctx) => New_Exp(onaddExp: _addUserExp),
    );
  }

  void _addUserExp(Expense expense) {
    setState(() {
      _registeredTask.add(expense);
    });
  }

  void _removeExp(Expense expense) {
    final expenseindex = _registeredTask.indexOf(expense);
    setState(() {
      _registeredTask.remove(expense);
    });
    ScaffoldMessenger.of(context).clearSnackBars();
    ScaffoldMessenger.of(context).showSnackBar(SnackBar(
      content: Text("Expenses Deleted...."),
      duration: Duration(seconds: 4),
      action: SnackBarAction(
          label: 'Undo',
          onPressed: () {
            setState(() {
              _registeredTask.insert(expenseindex, expense);
            });
          }),
    ));
  }

  @override
  Widget build(BuildContext context) {
    Widget content = Center(child: Text("No Expenses List  in Here!!!!"));
    if (_registeredTask.isNotEmpty) {
      content = ExpenseList(
        expenses: _registeredTask,
        onremoveExpense: _removeExp,
      );
    }
    return Scaffold(
      drawer: Drawer(),
      appBar: AppBar(
        title: Text("Harshita's  Expenses Tracker"),
        actions: [
          IconButton(
            iconSize: 34,
            color: Colors.black,
            onPressed: _addExpense_click,
            icon: Icon(Icons.add),
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // Text("chart"),
            Chart(expenses: _registeredTask),
            Expanded(
              child: content,
            ),
          ],
        ),
      ),
    );
  }
}
