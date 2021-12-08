import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:save/data/constants.dart';
import 'package:save/data/data.dart';
import 'package:save/models/transaction_model.dart';
import 'package:save/widgets/Transaction_detail_card.dart';
import 'package:save/widgets/transaction_calendar.dart';
import 'package:save/widgets/transaction_card.dart';
import 'package:table_calendar/table_calendar.dart';

import 'add_transaction.dart';

class TransactionScreen extends StatefulWidget {
  @override
  _TransactionScreenState createState() => _TransactionScreenState();
}

List _types = ['all', 'income', 'expense'];

String _currentType = "all";
String _currentkey = "all";

Map trans = {'all': allList, 'income': incomeList, 'expense': expenseList};

class _TransactionScreenState extends State<TransactionScreen> {
  CalendarController _controller;
  @override
  void initState() {
    super.initState();
    _controller = CalendarController();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              height: 200,
              width: MediaQuery.of(context).size.width,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(30),
                  bottomRight: Radius.circular(30),
                ),
                color: Colors.white,
                boxShadow: [
                  BoxShadow(
                    offset: Offset(2.5, 5),
                    blurRadius: 5,
                    color: Color(0xdddddd).withOpacity(.84),
                  ),
                ],
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Padding(
                    padding: EdgeInsets.only(left: 16, top: 20),
                    child: Text(
                      "Transactions",
                      style: TextStyle(
                        fontFamily: 'Montserrat',
                        fontWeight: FontWeight.bold,
                        fontSize: 24,
                      ),
                    ),
                  ),
                  TransactionCalendar(controller: _controller),
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.only(left: 16, top: 50),
              child: Row(
                children: <Widget>[
                  GestureDetector(
                    onTap: () {
                      setState(() {
                        _currentType = _types[0];
                        _currentkey = 'all';
                      });
                    },
                    child: Container(
                      margin: EdgeInsets.only(bottom: 8),
                      height: 30,
                      width: 80,
                      decoration: BoxDecoration(
                        color: _currentType == "all"
                            ? kPrimaryColor
                            : Color(0xffdddddd),
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: Center(
                        child: Text(
                          "All",
                          style: TextStyle(
                            fontSize: 16,
                            fontFamily: 'Montserrat',
                            fontWeight:
                                _currentType != "all" ? FontWeight.bold : null,
                            color: _currentType == "all"
                                ? Colors.white
                                : kDarkSecondaryColor,
                          ),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  GestureDetector(
                    onTap: () {
                      setState(() {
                        _currentType = _types[1];
                        _currentkey = 'income';
                      });
                    },
                    child: Container(
                      margin: EdgeInsets.only(bottom: 8),
                      height: 30,
                      width: 80,
                      decoration: BoxDecoration(
                        color: _currentType == "income"
                            ? kPrimaryColor
                            : Color(0xffdddddd),
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: Center(
                        child: Text(
                          "Income",
                          style: TextStyle(
                            fontSize: 16,
                            fontFamily: 'Montserrat',
                            fontWeight: _currentType != "income"
                                ? FontWeight.bold
                                : null,
                            color: _currentType == "income"
                                ? Colors.white
                                : kDarkSecondaryColor,
                          ),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  GestureDetector(
                    onTap: () {
                      setState(() {
                        _currentType = _types[2];
                        _currentkey = 'expense';
                      });
                    },
                    child: Container(
                      margin: EdgeInsets.only(bottom: 8),
                      height: 30,
                      width: 80,
                      decoration: BoxDecoration(
                        color: _currentType == "expense"
                            ? kPrimaryColor
                            : Color(0xffdddddd),
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: Center(
                        child: Text(
                          "Expense",
                          style: TextStyle(
                            fontSize: 16,
                            fontWeight: _currentType != "expense"
                                ? FontWeight.bold
                                : null,
                            fontFamily: 'Montserrat',
                            color: _currentType == "expense"
                                ? Colors.white
                                : kDarkSecondaryColor,
                          ),
                        ),
                      ),
                    ),
                  ),
                  Spacer(),
                  Padding(
                    padding: EdgeInsets.only(right: 16, bottom: 8),
                    child: GestureDetector(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => AddTransactions(),
                          ),
                        );
                      },
                      child: FaIcon(
                        FontAwesomeIcons.plusCircle,
                        color: kPrimaryColor,
                        size: 32,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            new Expanded(
              child: ListView.builder(
                scrollDirection: Axis.vertical,
                shrinkWrap: true,
                itemCount: trans[_currentkey].length,
                itemBuilder: (BuildContext context, int index) {
                  Transaction transaction = trans[_currentkey][index];
                  return GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) =>
                              TransactionDetailCard(myTransaction: transaction),
                        ),
                      );
                    },
                    child: TransactionCards(myTransaction: transaction),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
