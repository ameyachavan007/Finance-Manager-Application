import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import 'package:percent_indicator/linear_percent_indicator.dart';
import 'package:save/data/constants.dart';
import 'package:save/screens/edit_budget_screen.dart';
import 'package:save/screens/transaction_screen.dart';
import 'package:save/widgets/budget_card.dart';
import 'package:save/widgets/header_with_calendar.dart';

class BudgetScreen extends StatefulWidget {
  @override
  _BudgetScreenState createState() => _BudgetScreenState();
}

List _types = ['day', 'month'];

String _currentType = "day";

class _BudgetScreenState extends State<BudgetScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: ListView(
          children: [
            ContainerWithHeaderAndCalendar(
              header: "Budget",
            ),
            Padding(
              padding: EdgeInsets.only(left: 8, right: 8, top: 40),
              child: Container(
                margin: EdgeInsets.all(8),
                width: MediaQuery.of(context).size.width,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(10),
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
                  children: [
                    Padding(
                      padding: EdgeInsets.only(
                          left: 20, right: 20, top: 20, bottom: 10),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Rs. 432",
                            style: TextStyle(
                                fontSize: 24,
                                fontFamily: 'Montserrat',
                                fontWeight: FontWeight.bold),
                          ),
                          SizedBox(
                            height: 2.5,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                "Available balance",
                                style: TextStyle(
                                  fontSize: 14,
                                  fontFamily: 'Montserrat',
                                  fontWeight: FontWeight.bold,
                                  color: kDarkSecondaryColor.withOpacity(0.84),
                                ),
                              ),
                              Text(
                                "74%",
                                style: TextStyle(
                                  fontSize: 16,
                                  fontFamily: 'Montserrat',
                                  fontWeight: FontWeight.w600,
                                ),
                              ),
                            ],
                          ),
                          Padding(
                            padding: EdgeInsets.only(top: 16, bottom: 10),
                            child: LinearPercentIndicator(
                              width: MediaQuery.of(context).size.width * 0.80,
                              lineHeight: 15,
                              progressColor: kPrimaryColor,
                              percent: 0.74,
                              animation: true,
                            ),
                          ),
                          Align(
                            alignment: Alignment.bottomRight,
                            child: Text(
                              "Rs. 1700",
                              style: TextStyle(
                                fontSize: 18,
                                fontFamily: 'Montserrat',
                                fontWeight: FontWeight.w600,
                                color: kDarkSecondaryColor.withOpacity(0.84),
                              ),
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
                      padding: EdgeInsets.only(top: 10),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Text(
                            "Expenses",
                            style: TextStyle(
                              fontSize: 14,
                              fontFamily: 'Montserrat',
                              fontWeight: FontWeight.bold,
                              color: kDarkSecondaryColor.withOpacity(0.84),
                            ),
                          ),
                          Text(
                            "Income",
                            style: TextStyle(
                              fontSize: 14,
                              fontFamily: 'Montserrat',
                              fontWeight: FontWeight.bold,
                              color: kDarkSecondaryColor.withOpacity(0.84),
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
                              "Rs. 1268",
                              style: TextStyle(
                                  fontSize: 22,
                                  fontFamily: 'Montserrat',
                                  fontWeight: FontWeight.bold),
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
                              "Rs. 1760",
                              style: TextStyle(
                                  fontSize: 22,
                                  fontFamily: 'Montserrat',
                                  fontWeight: FontWeight.bold),
                            ),
                          ],
                        ),
                      ],
                    ),
                    Padding(
                      padding: EdgeInsets.only(
                          top: 30, bottom: 20, left: 20, right: 20),
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
                  ],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 40, left: 16, right: 16),
              child: Container(
                width: MediaQuery.of(context).size.width,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.all(
                    Radius.circular(10),
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
                child: Padding(
                  padding:
                      EdgeInsets.only(top: 10, right: 10, bottom: 10, left: 20),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      FaIcon(
                        FontAwesomeIcons.exclamationTriangle,
                        size: 50,
                        color: kExpenseColor,
                      ),
                      Padding(
                        padding: EdgeInsets.only(top: 20, left: 10, right: 20),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            RichText(
                              text: TextSpan(
                                text: "You've spent ",
                                style: TextStyle(
                                  fontFamily: 'Montserrat',
                                  fontSize: 16,
                                  color: Colors.black,
                                ),
                                children: <TextSpan>[
                                  TextSpan(
                                    text: 'Rs 43 ',
                                    style: TextStyle(
                                      fontFamily: 'Montserrat',
                                      color: Colors.black,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                  TextSpan(
                                    text:
                                        'more\nthan average on\nEntertainment this\nmonth',
                                    style: TextStyle(
                                      fontFamily: 'Montserrat',
                                      color: Colors.black,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            GestureDetector(
                              onTap: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) => TransactionScreen(),
                                  ),
                                );
                              },
                              child: Row(
                                children: [
                                  Text(
                                    "Review transactions",
                                    style: TextStyle(
                                      fontSize: 16,
                                      fontFamily: 'Montserrat',
                                      fontWeight: FontWeight.w600,
                                      color: kPrimaryColor,
                                    ),
                                  ),
                                  SizedBox(
                                    width: 10,
                                  ),
                                  FaIcon(
                                    FontAwesomeIcons.chevronRight,
                                    color: kPrimaryColor,
                                    size: 14,
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      )
                    ],
                  ),
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(top: 40, left: 16),
              child: Text(
                "Budget per category",
                style: TextStyle(
                  fontFamily: 'Montserrat',
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(top: 20, left: 16),
              child: Row(
                children: [
                  GestureDetector(
                    onTap: () {
                      setState(() {
                        _currentType = _types[0];
                      });
                    },
                    child: Container(
                      height: 30,
                      width: 80,
                      decoration: BoxDecoration(
                        color: _currentType == "day"
                            ? kPrimaryColor
                            : Color(0xffdddddd),
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: Center(
                        child: Text(
                          "Per day",
                          style: TextStyle(
                            fontSize: 16,
                            fontFamily: 'Montserrat',
                            fontWeight:
                                _currentType != "day" ? FontWeight.bold : null,
                            color: _currentType == "day"
                                ? Colors.white
                                : Colors.black,
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
                      });
                    },
                    child: Container(
                      height: 30,
                      width: 100,
                      decoration: BoxDecoration(
                        color: _currentType == "month"
                            ? kPrimaryColor
                            : Color(0xffdddddd),
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: Center(
                        child: Text(
                          "Per month",
                          style: TextStyle(
                            fontSize: 16,
                            fontFamily: 'Montserrat',
                            fontWeight: _currentType != "month"
                                ? FontWeight.bold
                                : null,
                            color: _currentType == "month"
                                ? Colors.white
                                : Colors.black,
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Column(
              children: [
                BudgetCard(),
                BudgetCard(),
              ],
            ),
            SizedBox(
              height: 20,
            )
          ],
        ),
      ),
    );
  }
}
