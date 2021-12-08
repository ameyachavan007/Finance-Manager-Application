import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:save/data/constants.dart';
import 'package:save/models/transaction_model.dart';

class TransactionCards extends StatelessWidget {
  final Transaction myTransaction;
  TransactionCards({this.myTransaction});
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(8),
      child: Container(
        margin: EdgeInsets.symmetric(vertical: 8, horizontal: 8),
        height: 100,
        width: MediaQuery.of(context).size.width,
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
                  decoration: BoxDecoration(
                    color: myTransaction.type ? kIncomeColor : kExpenseColor,
                  ),
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(left: 20, right: 20, top: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  FaIcon(
                    myTransaction.iconData,
                    color: kPrimaryColor,
                  ),
                  Wrap(
                    direction: Axis.vertical,
                    children: <Widget>[
                      Text(
                        myTransaction.category,
                        style: TextStyle(
                            fontFamily: 'Montserrat',
                            fontSize: 16,
                            fontWeight: FontWeight.w600),
                      ),
                      SizedBox(
                        height: 2,
                      ),
                      Text(
                        myTransaction.description,
                        style: TextStyle(
                            fontFamily: 'Montserrat',
                            fontSize: 12,
                            fontWeight: FontWeight.w400),
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      Text(
                        myTransaction.date,
                        style: TextStyle(
                          fontFamily: 'Montserrat',
                          fontSize: 14,
                          color: kDarkSecondaryColor,
                        ),
                      ),
                    ],
                  ),
                  Text(
                    myTransaction.type
                        ? "+" + "Rs. " + myTransaction.amount.toString()
                        : "-" + "Rs. " + myTransaction.amount.toString(),
                    style: TextStyle(
                      fontFamily: 'Montserrat',
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
