import 'package:flutter/material.dart';
import 'package:expense_tracker/models/expense.dart';

class Expenses extends StatefulWidget {
  const Expenses({super.key});
  @override
  State<Expenses> createState() {
    return _Expenses();
  }
}

class _Expenses extends State<Expenses> {
  final List<Expense> _registeredExpenses = [
    Expense(
        title: 'Flutter Course',
        amount: 499,
        date: DateTime.now(),
        category: Category.work),
    Expense(
        title: 'Keyboard',
        amount: 1800,
        date: DateTime.now(),
        category: Category.work),
  ];
  @override
  Widget build(context) {
    return const Scaffold(
      body: Column(
        children: [],
      ),
    );
  }
}
