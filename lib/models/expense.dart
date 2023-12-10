import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:uuid/uuid.dart';
import 'package:intl/intl.dart';

final formatter = DateFormat.yMd();

enum Category { food, travel, household, work, entertainment }

const uuid = Uuid();
final categoryIcon = {
  Category.work: Icons.work,
  Category.food: Icons.lunch_dining,
  Category.travel: Icons.flight_takeoff,
  Category.household: Icons.house,
  Category.entertainment: Icons.movie,
};

class Expense {
  Expense({
    required this.title,
    required this.amount,
    required this.date,
    required this.category,
  }) : id = uuid.v4();

  final String id;
  final String title;
  final double amount;
  final DateTime date;
  final Category category;

  String get formattedDate {
    return formatter.format(date);
  }
}
