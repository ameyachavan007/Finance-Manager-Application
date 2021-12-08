import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:save/models/category_model.dart';
import 'package:save/models/expense_model.dart';
import 'package:save/models/savings_model.dart';
import 'package:save/models/transaction_model.dart';

final _trans0 = Transaction(
  category: "Entertainment",
  date: "19 Spetember 2020",
  amount: 354,
  type: false,
  description: "Movie tickets",
  iconData: FontAwesomeIcons.film,
);

final _trans1 = Transaction(
  category: "Grocery",
  date: "12 February 2020",
  amount: 780.35,
  type: false,
  description: "Vegetables",
  iconData: FontAwesomeIcons.shoppingCart,
);

final _trans2 = Transaction(
  category: "Salary",
  date: "26 September 2020",
  amount: 2500,
  type: true,
  description: "FreeLancing",
  iconData: FontAwesomeIcons.creditCard,
);

final _trans3 = Transaction(
  category: "Others",
  date: "27 September 2020",
  amount: 150,
  type: true,
  description: "Pocket Money",
  iconData: FontAwesomeIcons.creditCard,
);

final transactions = [_trans0, _trans1, _trans2, _trans3];

final allList = [_trans0, _trans2, _trans1, _trans3];
final expenseList = [_trans0, _trans1];
final incomeList = [_trans2, _trans3];

final _expense0 = Expense(description: 'Movie Tickets', pirce: 20);
final _expense1 = Expense(description: 'E-Book', pirce: 2.50);
final _expense2 = Expense(description: 'Phill Collins Album', pirce: 16.40);
final _expense3 = Expense(description: 'Netflix Subscription', pirce: 19.90);

final _entertainmentList = [_expense0, _expense1, _expense2, _expense3];
// final _entertainmentExpense = [
//   _expense0.pirce,
//   _expense1.pirce,
//   _expense2.pirce,
//   _expense3.pirce
// ];

final _cat0 = Category(
  name: 'Entertainment',
  maxAmount: 150,
  totalExpenses: 168,
  expenses: _entertainmentList,
  iconData: FontAwesomeIcons.film,
  percent: 0.13,
);

final _cat1 = Category(
  name: 'Grocery',
  maxAmount: 220,
  totalExpenses: 250,
  expenses: _entertainmentList,
  iconData: FontAwesomeIcons.shoppingCart,
  percent: 0.50,
);

final _cat2 = Category(
  name: 'Housing',
  maxAmount: 150,
  totalExpenses: 850,
  expenses: _entertainmentList,
  iconData: FontAwesomeIcons.key,
  percent: 0.67,
);

final allCategories = [_cat0, _cat1, _cat2];

final Map date = {
  '19 September': [_expense0, _expense1],
  '20 September': [_expense2, _expense3],
  '21 September': [_expense3, _expense1],
  '24 September': [_expense2, _expense1],
};

// final _saveTarget1 = Savings("Home", 24, 10000, );
// final _saveTarget2 = Savings("Cars", 12, 2000);
// final _saveTarget3 = Savings("Travel", 6, 5000);

final _saveTarget1 = Savings(
  "Home",
  24,
  10000,
  42,
  50,
);

final _saveTarget2 = Savings(
  "Cars",
  12,
  2000,
  67,
  160,
);

final _saveTarget3 = Savings(
  "Travel",
  6,
  5000,
  33,
  833,
);

final savings = [_saveTarget1, _saveTarget2, _saveTarget3];
