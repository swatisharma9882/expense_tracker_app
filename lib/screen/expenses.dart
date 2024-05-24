import 'package:expense_tracker_app/widgets/expenses_list.dart';
import 'package:flutter/material.dart';

import 'package:expense_tracker_app/models/expense.dart';

class Expenses extends StatefulWidget {
  const Expenses({super.key});

  @override
  State<Expenses> createState() => _ExpensesState();
}

class _ExpensesState extends State<Expenses> {
  final List<Expense> _registeredExpenses = [
    Expense(
        title: "Flutter course",
        amount: 19.99,
        date: DateTime.now(),
        category: Category.work),
    Expense(
        title: "Movie",
        amount: 20,
        date: DateTime.now(),
        category: Category.leisure),
    Expense(
        title: "Delhi",
        amount: 25.90,
        date: DateTime.now(),
        category: Category.travel),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10),
      child: Column(
        children: [
          const Text("The Chart"),
          Expanded(child: ExpensesList(expense: _registeredExpenses)),
        ],
      ),
    ));
  }
}
