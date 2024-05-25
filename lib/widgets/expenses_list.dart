import 'package:expense_tracker_app/widgets/expense_item.dart';
import 'package:flutter/material.dart';

import 'package:expense_tracker_app/models/expense.dart';

class ExpensesList extends StatelessWidget {
  const ExpensesList({super.key, required this.expense, required this.onRemoveExpense});

  final List<Expense> expense;
  final Function(Expense expense) onRemoveExpense;

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        itemCount: expense.length,
        itemBuilder: (ctx, index) {
          return Dismissible(
            onDismissed: (direction){
              onRemoveExpense(expense[index]);
            },
            key: ValueKey(expense[index]),
            child: ExpenseItem(expense[index]),
          );
        });
  }
}
