import 'package:flutter/cupertino.dart';

import 'package:save/models/expense_model.dart';

class Category {
  final String name;
  final double maxAmount;
  final int totalExpenses;
  final List<Expense> expenses;
  final IconData iconData;
  final double percent;

  Category(
      {this.totalExpenses,
      this.percent,
      this.expenses,
      this.name,
      this.maxAmount,
      this.iconData});
}
