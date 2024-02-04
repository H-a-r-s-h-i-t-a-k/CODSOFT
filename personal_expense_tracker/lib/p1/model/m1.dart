import 'package:flutter/material.dart';
import 'package:uuid/uuid.dart';
import 'package:intl/intl.dart';

const uuid = Uuid();
final formated = DateFormat.yMd();

enum Category {
  Gym,
  Yoga,
  HealthCare,
  SkinCare,
  Lab_test,
  Medicine,
  MentalHealth,
}

const categoryIcon = {
  Category.Gym: Icons.sports_gymnastics,
  Category.HealthCare: Icons.local_grocery_store_sharp,
  Category.Lab_test: Icons.science_outlined,
  Category.Medicine: Icons.medical_services_outlined,
  Category.SkinCare: Icons.production_quantity_limits,
  Category.MentalHealth: Icons.person_remove_sharp,
  Category.Yoga: Icons.sports_handball,
};

class Expense {
  Expense({
    required this.title,
    required this.category,
    required this.amount,
    required this.date,
  }) : id = uuid.v4();
  final String id, title;
  final double amount;
  final DateTime date;
  final Category category;
  String get formattedDate {
    return formated.format(date);
  }
}

class ExpenseBucket {
  const ExpenseBucket({
    required this.category,
    required this.expenses,
  });

  ExpenseBucket.forCategory(List<Expense> allExpenses, this.category)
      : expenses =
            allExpenses.where((exp) => exp.category == category).toList();
  final Category category;
  final List<Expense> expenses;

  double get totalExpenses {
    double sum = 0;
    for (final exp in expenses) {
      sum += exp.amount;
    }
    return sum;
  }
}
