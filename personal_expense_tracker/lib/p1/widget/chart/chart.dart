import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../model/m1.dart';
import 'chart_bar.dart';

class Chart extends StatelessWidget {
  const Chart({super.key, required this.expenses});
  final List<Expense> expenses;

  List<ExpenseBucket> get buckets {
    return [
      ExpenseBucket.forCategory(expenses, Category.Gym),
      ExpenseBucket.forCategory(expenses, Category.HealthCare),
      ExpenseBucket.forCategory(expenses, Category.Lab_test),
      ExpenseBucket.forCategory(expenses, Category.Medicine),
      ExpenseBucket.forCategory(expenses, Category.MentalHealth),
      ExpenseBucket.forCategory(expenses, Category.SkinCare),
      ExpenseBucket.forCategory(expenses, Category.Yoga),
    ];
  }

  double get maxTotalExpense {
    double maxTotalExpense = 0;

    for (final bucket in buckets) {
      if (bucket.totalExpenses > maxTotalExpense)
        maxTotalExpense = bucket.totalExpenses;
    }
    return maxTotalExpense;
  }

  @override
  Widget build(BuildContext context) {
    final isDarkMode =
        MediaQuery.of(context).platformBrightness == Brightness.dark;
    return Container(
      margin: EdgeInsets.all(15),
      padding: EdgeInsets.symmetric(
        vertical: 26,
        horizontal: 8,
      ),
      width: double.infinity,
      height: 280,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(8),
        gradient: LinearGradient(colors: [
          Colors.lightBlue.withOpacity(0.6),
          Colors.lightBlue.withOpacity(0.0)
        ], begin: Alignment.bottomCenter, end: Alignment.topCenter),
      ),
      child: Column(
        children: [
          Expanded(
            child: Row(
              children: [
                for (final bucket in buckets)
                  ChartBar(
                      fill: bucket.totalExpenses == 0
                          ? 0
                          : bucket.totalExpenses / maxTotalExpense)
              ],
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Row(
              children: buckets
                  .map((bucket) => Expanded(
                        child: Padding(
                          padding: EdgeInsets.symmetric(horizontal: 5),
                          child: Icon(
                            categoryIcon[bucket.category],
                            size: 30,
                            color: isDarkMode
                                ? Theme.of(context)
                                    .colorScheme
                                    .secondaryContainer
                                    .withOpacity(0.47)
                                : Colors.lightBlue.withOpacity(0.9),
                          ),
                        ),
                      ))
                  .toList()),
        ],
      ),
    );
  }
}
