import 'package:flutter/material.dart';
import 'package:save/data/constants.dart';
import 'package:save/screens/edit_budget_screen.dart';

class IncomeExpenseCard extends StatefulWidget {
  final String month;

  final int year;
  final double income, expense;

  const IncomeExpenseCard({
    Key key,
    this.month,
    this.expense,
    this.income,
    this.year,
  }) : super(key: key);

  @override
  _IncomeExpenseCardState createState() => _IncomeExpenseCardState();
}

class _IncomeExpenseCardState extends State<IncomeExpenseCard> {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(8),
      width: MediaQuery.of(context).size.width,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(10),
        boxShadow: [
          BoxShadow(
            offset: Offset(2, 10),
            blurRadius: 10,
            spreadRadius: 1,
            color: Color(0xffd8d8d8).withOpacity(0.84),
          ),
        ],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: EdgeInsets.only(left: 20, top: 20, bottom: 10),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "${widget.month}",
                  style: TextStyle(
                      fontSize: 24,
                      fontFamily: 'Montserrat',
                      fontWeight: FontWeight.bold),
                ),
                SizedBox(
                  height: 2.5,
                ),
                Text(
                  "${widget.year}",
                  style: TextStyle(
                    fontSize: 14,
                    fontFamily: 'Montserrat',
                    fontWeight: FontWeight.bold,
                    color: kDarkSecondaryColor,
                  ),
                ),
              ],
            ),
          ),
          Divider(
            color: kLightSecondaryColor,
            thickness: 1,
            indent: 20,
            endIndent: 20,
          ),
          Padding(
            padding: EdgeInsets.only(top: 10, bottom: 5),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Text(
                  "Expenses",
                  style: TextStyle(
                    fontSize: 14,
                    fontFamily: 'Montserrat',
                    fontWeight: FontWeight.bold,
                    color: kDarkSecondaryColor,
                  ),
                ),
                Text(
                  "Income",
                  style: TextStyle(
                    fontSize: 14,
                    fontFamily: 'Montserrat',
                    fontWeight: FontWeight.bold,
                    color: kDarkSecondaryColor,
                  ),
                ),
              ],
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Row(
                children: [
                  ClipOval(
                    child: Container(
                      height: 10,
                      width: 10,
                      color: kExpenseColor,
                    ),
                  ),
                  SizedBox(
                    width: 5,
                  ),
                  Text(
                    "Rs. ${widget.expense}",
                    style: TextStyle(
                      fontSize: 22,
                      fontFamily: 'Montserrat',
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
              Row(
                children: [
                  ClipOval(
                    child: Container(
                      height: 10,
                      width: 10,
                      color: kIncomeColor,
                    ),
                  ),
                  SizedBox(
                    width: 5,
                  ),
                  Text(
                    "Rs. ${widget.income}",
                    style: TextStyle(
                      fontSize: 22,
                      fontFamily: 'Montserrat',
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
            ],
          ),
          Padding(
            padding: EdgeInsets.only(top: 30, bottom: 20, left: 20, right: 20),
            child: Center(
              child: GestureDetector(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => EditBudgetScreen(),
                    ),
                  );
                },
                child: Container(
                  height: 40,
                  decoration: BoxDecoration(
                    color: kPrimaryColor,
                    borderRadius: BorderRadius.circular(5),
                  ),
                  child: Center(
                    child: Text(
                      "Edit Budget",
                      style: TextStyle(
                        fontSize: 16,
                        fontFamily: 'Montserrat',
                        fontWeight: FontWeight.w600,
                        color: Colors.white,
                      ),
                    ),
                  ),
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
