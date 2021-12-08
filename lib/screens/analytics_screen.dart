import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:save/data/constants.dart';
import 'package:save/data/data.dart';
import 'package:save/models/category_model.dart';
import 'package:save/screens/category_detail_screen.dart';
import 'package:save/widgets/analytics_transactions_card.dart';
import 'package:save/widgets/bar_chart.dart';
import 'package:percent_indicator/percent_indicator.dart';
import 'package:save/widgets/header_with_calendar.dart';

class AnalyticsScreen extends StatefulWidget {
  @override
  _AnalyticsScreenState createState() => _AnalyticsScreenState();
}

// List _types = ['list', 'graph'];

// String _currentType = "list";

class _AnalyticsScreenState extends State<AnalyticsScreen> {
  final _moneySpent = [50.0, 22.5, 99.5, 51.0, 72.5, 66.2];

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: ListView(
          children: [
            ContainerWithHeaderAndCalendar(
              header: "Analytics",
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: EdgeInsets.only(left: 16, right: 16, top: 32),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            "Rs. 1268",
                            style: TextStyle(
                              fontFamily: 'Montserrat',
                              fontWeight: FontWeight.bold,
                              fontSize: 30,
                            ),
                          ),
                          Container(
                            height: 30,
                            width: 110,
                            decoration: BoxDecoration(
                              color: kPrimaryColor,
                              borderRadius: BorderRadius.circular(10),
                            ),
                            child: Center(
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceEvenly,
                                children: [
                                  Text(
                                    "Expenses",
                                    style: TextStyle(
                                      fontFamily: 'Montserrat',
                                      color: Colors.white,
                                      fontSize: 12,
                                    ),
                                  ),
                                  FaIcon(
                                    FontAwesomeIcons.angleDown,
                                    color: Colors.white,
                                    size: 16,
                                  )
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                      Text(
                        "spent in March",
                        style: TextStyle(
                          fontFamily: 'Montserrat',
                          color: kDarkSecondaryColor,
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      TheChart(moneySpent: _moneySpent),
                      Padding(
                        padding: const EdgeInsets.only(top: 40),
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
                            padding: EdgeInsets.symmetric(
                                vertical: 10, horizontal: 10),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              children: [
                                CircularPercentIndicator(
                                  progressColor: kPrimaryColor,
                                  percent: 0.74,
                                  animation: true,
                                  center: RichText(
                                    text: TextSpan(
                                      text: '74%\n',
                                      style: TextStyle(
                                        fontFamily: 'Montserrat',
                                        fontSize: 24,
                                        color: Colors.black,
                                        fontWeight: FontWeight.bold,
                                      ),
                                      children: <TextSpan>[
                                        TextSpan(
                                          text: 'spent',
                                          style: TextStyle(
                                            fontFamily: 'Montserrat',
                                            color: kDarkSecondaryColor,
                                            fontSize: 16,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                  radius: 100.0,
                                  lineWidth: 8,
                                  circularStrokeCap: CircularStrokeCap.round,
                                ),
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      "Monthly budget",
                                      style: TextStyle(
                                        fontFamily: 'Montserrat',
                                        color: kDarkSecondaryColor,
                                        fontSize: 16,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                    Text(
                                      "Rs 1700",
                                      style: TextStyle(
                                        fontFamily: 'Montserrat',
                                        fontSize: 24,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                    SizedBox(
                                      height: 10,
                                    ),
                                    RichText(
                                      text: TextSpan(
                                        text: 'Last month expenses\nare ',
                                        style: TextStyle(
                                          fontFamily: 'Montserrat',
                                          fontSize: 16,
                                          color: Colors.black,
                                        ),
                                        children: <TextSpan>[
                                          TextSpan(
                                            text: 'Rs 51 ',
                                            style: TextStyle(
                                              fontFamily: 'Montserrat',
                                              color: Colors.black,
                                              fontWeight: FontWeight.bold,
                                            ),
                                          ),
                                          TextSpan(
                                            text: 'less',
                                            style: TextStyle(
                                              fontFamily: 'Montserrat',
                                              color: Colors.black,
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ],
                                )
                              ],
                            ),
                          ),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(top: 40),
                        child: Text(
                          "Categories",
                          style: TextStyle(
                            fontFamily: 'Montserrat',
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                      // Padding(
                      //   padding: EdgeInsets.only(top: 20),
                      //   child: Row(
                      //     children: <Widget>[
                      //       GestureDetector(
                      //         onTap: () {
                      //           setState(() {
                      //             _currentType = _types[0];
                      //           });
                      //         },
                      //         child: Container(
                      //           height: 30,
                      //           width: 80,
                      //           decoration: BoxDecoration(
                      //             color: _currentType == "list"
                      //                 ? kPrimaryColor
                      //                 : Color(0xffdddddd),
                      //             borderRadius: BorderRadius.circular(10),
                      //           ),
                      //           child: Center(
                      //             child: Text(
                      //               "List",
                      //               style: TextStyle(
                      //                 fontSize: 16,
                      //                 fontFamily: 'Montserrat',
                      //                 fontWeight: _currentType != "list"
                      //                     ? FontWeight.bold
                      //                     : null,
                      //                 color: _currentType == "list"
                      //                     ? Colors.white
                      //                     : Colors.black,
                      //               ),
                      //             ),
                      //           ),
                      //         ),
                      //       ),
                      //       SizedBox(
                      //         width: 10,
                      //       ),
                      //       GestureDetector(
                      //         onTap: () {
                      //           setState(() {
                      //             _currentType = _types[1];
                      //           });
                      //         },
                      //         child: Container(
                      //           height: 30,
                      //           width: 80,
                      //           decoration: BoxDecoration(
                      //             color: _currentType == "graph"
                      //                 ? kPrimaryColor
                      //                 : Color(0xffdddddd),
                      //             borderRadius: BorderRadius.circular(10),
                      //           ),
                      //           child: Center(
                      //             child: Text(
                      //               "Graph",
                      //               style: TextStyle(
                      //                 fontSize: 16,
                      //                 fontFamily: 'Montserrat',
                      //                 fontWeight: _currentType != "graph"
                      //                     ? FontWeight.bold
                      //                     : null,
                      //                 color: _currentType == "graph"
                      //                     ? Colors.white
                      //                     : Colors.black,
                      //               ),
                      //             ),
                      //           ),
                      //         ),
                      //       ),
                      //       Spacer(),
                      //       Padding(
                      //         padding: EdgeInsets.only(right: 8),
                      //         child: FaIcon(
                      //           FontAwesomeIcons.slidersH,
                      //           color: kPrimaryColor,
                      //         ),
                      //       ),
                      //     ],
                      //   ),
                      // ),
                      ListView.builder(
                        shrinkWrap: true,
                        scrollDirection: Axis.vertical,
                        itemCount: allCategories.length,
                        itemBuilder: (BuildContext context, int index) {
                          Category category = allCategories[index];
                          return GestureDetector(
                            onTap: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => CategoryDetailScreen(
                                      myCategory: category),
                                ),
                              );
                            },
                            child:
                                AnalyticsTransactionCard(myCategory: category),
                          );
                        },
                      ),
                    ],
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 20,
            ),
          ],
        ),
      ),
    );
  }
}
