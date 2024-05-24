import 'package:expense_tracker_app/widgets/expense_item.dart';
import 'package:flutter/material.dart';

import 'package:expense_tracker_app/models/expense.dart';

class ExpensesList extends StatelessWidget {
  const ExpensesList({super.key, required this.expense});
  final List<Expense> expense;

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        itemCount: expense.length,
        itemBuilder: (ctx, index) {
          return ExpenseItem(expense[index]);
        });
  }
}
