import 'package:flutter/material.dart';
import 'package:save/data/constants.dart';

class DateAndTotalPriceLabel extends StatelessWidget {
  const DateAndTotalPriceLabel({
    Key key,
    this.date,
    this.price,
  }) : super(key: key);
  final String date;
  final double price;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: 16, top: 40, right: 16),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            "$date",
            style: TextStyle(
              fontFamily: 'Montserrat',
              color: kDarkSecondaryColor.withOpacity(0.80),
              fontWeight: FontWeight.normal,
              fontSize: 16,
            ),
          ),
          Text(
            "- Rs $price",
            style: TextStyle(
              fontFamily: 'Montserrat',
              color: kDarkSecondaryColor.withOpacity(0.54),
              fontWeight: FontWeight.w900,
              fontSize: 16,
            ),
          ),
        ],
      ),
    );
  }
}
