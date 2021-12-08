import 'package:flutter/material.dart';
import 'package:save/widgets/year_and_month.dart';

class ContainerWithHeaderAndCalendar extends StatelessWidget {
  const ContainerWithHeaderAndCalendar({
    Key key,
    this.header,
  }) : super(key: key);

  final String header;

  @override
  Widget build(BuildContext context) {
    return Container(
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
        children: [
          Padding(
            padding: EdgeInsets.only(top: 10, left: 16),
            child: Text(
              "$header",
              style: TextStyle(
                fontFamily: 'Montserrat',
                fontWeight: FontWeight.bold,
                fontSize: 24,
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 16, vertical: 20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                YearAndMonth(
                  year: 2020,
                  month: "Jan",
                ),
                YearAndMonth(
                  year: 2019,
                  month: "Feb",
                ),
                YearAndMonth(
                  year: 2018,
                  month: "Mar",
                ),
                YearAndMonth(
                  year: 2017,
                  month: "Apr",
                ),
                YearAndMonth(
                  year: 2016,
                  month: "May",
                ),
                YearAndMonth(
                  year: 2015,
                  month: "Jun",
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
