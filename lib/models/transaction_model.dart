import 'package:flutter/cupertino.dart';

class Transaction {
  final String category;
  final String date;
  final double amount;
  final String description;
  final bool type;
  final IconData iconData;

  Transaction({
    this.iconData,
    this.category,
    this.date,
    this.amount,
    this.description,
    this.type,
  });
}
