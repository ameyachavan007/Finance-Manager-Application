import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:percent_indicator/linear_percent_indicator.dart';
import 'package:save/data/constants.dart';
import 'package:save/models/category_model.dart';

class AnalyticsTransactionCard extends StatelessWidget {
  final Category myCategory;
  const AnalyticsTransactionCard({this.myCategory});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(top: 24),
      child: Container(
        width: MediaQuery.of(context).size.width,
        height: 100,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(10),
          boxShadow: [
            BoxShadow(
              offset: Offset(0, 5),
              blurRadius: 8,
              spreadRadius: 3,
              color: Color(0xdddddd).withOpacity(.84),
            ),
          ],
        ),
        child: Stack(
          children: [
            Positioned(
              right: 0,
              child: ClipRRect(
                borderRadius: BorderRadius.only(
                  topRight: Radius.circular(10),
                  bottomRight: Radius.circular(10),
                ),
                child: Container(
                  height: 100,
                  width: 6,
                  decoration: BoxDecoration(color: kExpenseColor),
                ),
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: <Widget>[
                Padding(
                  padding: EdgeInsets.only(left: 10, right: 10),
                  child: FaIcon(
                    myCategory.iconData,
                    color: kPrimaryColor,
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(top: 20, right: 10),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        myCategory.name,
                        style: TextStyle(
                            fontFamily: 'Montserrat',
                            fontSize: 18,
                            fontWeight: FontWeight.w600),
                      ),
                      Text(
                        myCategory.expenses.length.toString() + " transactions",
                        style: TextStyle(
                            fontFamily: 'Montserrat',
                            fontSize: 16,
                            color: kDarkSecondaryColor,
                            fontWeight: FontWeight.w600),
                      ),
                      Padding(
                        padding: EdgeInsets.only(top: 10),
                        child: LinearPercentIndicator(
                          width: MediaQuery.of(context).size.width * 0.5,
                          lineHeight: 8,
                          progressColor: kPrimaryColor,
                          percent: myCategory.percent,
                          animation: true,
                        ),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(top: 20, right: 15),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      Text(
                        "- Rs " + myCategory.totalExpenses.toString(),
                        style: TextStyle(
                            fontFamily: 'Montserrat',
                            fontSize: 18,
                            fontWeight: FontWeight.bold),
                      ),
                      Text(
                        (myCategory.percent * 100).toInt().toString() + "%",
                        style: TextStyle(
                          fontFamily: 'Montserrat',
                          fontSize: 18,
                          color: kDarkSecondaryColor,
                          fontWeight: FontWeight.w600,
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
    );
  }
}
