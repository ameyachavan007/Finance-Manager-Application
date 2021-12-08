import 'package:flutter/cupertino.dart';
import 'package:save/data/constants.dart';

class YearAndMonth extends StatelessWidget {
  const YearAndMonth({
    Key key,
    this.year,
    this.month,
  }) : super(key: key);
  final int year;
  final String month;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          "$year",
          style: TextStyle(
            fontFamily: 'Montserrat',
            color: kDarkSecondaryColor.withOpacity(0.84),
            fontWeight: FontWeight.w600,
            fontSize: 16,
          ),
        ),
        SizedBox(
          height: 5,
        ),
        Text(
          "$month",
          style: TextStyle(
            fontFamily: 'Montserrat',
            fontWeight: FontWeight.bold,
            fontSize: 16,
          ),
        ),
      ],
    );
  }
}
