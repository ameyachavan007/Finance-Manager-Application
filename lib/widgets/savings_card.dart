import 'package:flutter/material.dart';
import 'package:percent_indicator/circular_percent_indicator.dart';
import 'package:save/data/constants.dart';
import 'package:save/models/savings_model.dart';

class SavingsCard extends StatelessWidget {
  final Savings mySaving;

  const SavingsCard({this.mySaving});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(8),
      child: Container(
        width: MediaQuery.of(context).size.width,
        height: 100,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(10),
          boxShadow: [
            BoxShadow(
              offset: Offset(10, 10),
              blurRadius: 10,
              spreadRadius: 1,
              color: Color(0xffd8d8d8).withOpacity(0.84),
            ),
          ],
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: <Widget>[
            CircularPercentIndicator(
              progressColor: kPrimaryColor,
              radius: 80.0,
              lineWidth: 8.0,
              animation: true,
              percent: 0.50,
              circularStrokeCap: CircularStrokeCap.round,
              center: Text(
                mySaving.percent.toString() + "%",
                style: TextStyle(
                  fontFamily: 'Montserrat',
                  fontSize: 20,
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Padding(
                  padding: EdgeInsets.only(top: 16),
                  child: Text(
                    mySaving.targetName,
                    style: TextStyle(
                      fontFamily: 'Montserrat',
                      fontSize: 18,
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                SizedBox(
                  height: 8.0,
                ),
                Text(
                  "Recommended monthly saving is",
                  style: TextStyle(
                    fontSize: 12,
                    fontFamily: 'Montserrat',
                    color: kDarkSecondaryColor.withOpacity(0.84),
                    fontWeight: FontWeight.w600,
                  ),
                ),
                Text(
                  "Rs. " + mySaving.emi.toString(),
                  style: TextStyle(
                    fontFamily: 'Montserrat',
                    fontSize: 16,
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
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
