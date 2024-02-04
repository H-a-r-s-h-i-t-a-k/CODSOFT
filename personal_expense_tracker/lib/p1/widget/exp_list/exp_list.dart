import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../../model/m1.dart';
import 'exp_item.dart';

class ExpenseList extends StatelessWidget {
  const ExpenseList({
    super.key,
    required this.expenses,
    required this.onremoveExpense,
  });
  final List<Expense> expenses;
  final void Function(Expense expense) onremoveExpense;
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: expenses.length,
      itemBuilder: (context, index) => Dismissible(
        background: Card(
          elevation: 5,
          color: Theme.of(context).colorScheme.error,
        ),
        key: ValueKey(expenses[index]),
        onDismissed: (direction) {
          onremoveExpense(expenses[index]);
        },
        child: Exp_item(expenses[index]),
      ),
    );
  }
}
