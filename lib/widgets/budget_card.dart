import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:percent_indicator/linear_percent_indicator.dart';
import 'package:save/data/constants.dart';

class BudgetCard extends StatelessWidget {
  const BudgetCard({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(top: 20, left: 16, right: 16),
      child: Container(
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
        child: Padding(
          padding: EdgeInsets.only(left: 16, right: 16),
          child: Row(
            children: [
              FaIcon(
                FontAwesomeIcons.shoppingCart,
                color: kPrimaryColor,
              ),
              SizedBox(
                width: 20,
              ),
              Padding(
                padding: EdgeInsets.only(top: 10, bottom: 20),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        Text(
                          "Grocery",
                          style: TextStyle(
                            fontSize: 16,
                            fontFamily: 'Montserrat',
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                        SizedBox(
                          width: 70,
                        ),
                        Text(
                          "Rs. 25",
                          style: TextStyle(
                            fontSize: 16,
                            fontFamily: 'Montserrat',
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        Text(
                          "/day",
                          style: TextStyle(
                            fontSize: 16,
                            fontFamily: 'Montserrat',
                            color: kDarkSecondaryColor.withOpacity(0.84),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    LinearPercentIndicator(
                      width: MediaQuery.of(context).size.width * 0.60,
                      lineHeight: 25,
                      progressColor: kPrimaryColor,
                      percent: 0.34,
                      animation: true,
                      center: Padding(
                        padding:
                            EdgeInsets.symmetric(horizontal: 8, vertical: 8),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              "Rs. 13",
                              style: TextStyle(
                                fontSize: 8,
                                fontFamily: 'Montserrat',
                                fontWeight: FontWeight.bold,
                                color: Colors.white,
                              ),
                            ),
                            Text(
                              "Rs. 25",
                              style: TextStyle(
                                fontSize: 8,
                                fontFamily: 'Montserrat',
                                fontWeight: FontWeight.bold,
                                color: Color(0xffe9e0f8),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Row(
                      children: [
                        FaIcon(
                          FontAwesomeIcons.thumbsUp,
                          color: kDarkSecondaryColor,
                          size: 16,
                        ),
                        SizedBox(
                          width: 5,
                        ),
                        Text(
                          "Your limit is well on track!",
                          style: TextStyle(
                            fontSize: 12,
                            fontFamily: 'Montserrat',
                            color: kDarkSecondaryColor.withOpacity(0.84),
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
