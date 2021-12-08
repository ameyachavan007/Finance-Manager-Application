import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:save/data/constants.dart';
import 'package:save/models/category_model.dart';

import 'package:save/widgets/category_transaction_detail_card.dart';
import 'package:save/widgets/date_and_time_label.dart';

class CategoryDetailScreen extends StatelessWidget {
  final Category myCategory;
  const CategoryDetailScreen({this.myCategory});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: ListView(
          scrollDirection: Axis.vertical,
          children: [
            Container(
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
              child: Padding(
                padding: EdgeInsets.only(left: 16, top: 20, bottom: 50),
                child: Row(
                  children: [
                    FaIcon(
                      FontAwesomeIcons.arrowLeft,
                      color: kPrimaryColor,
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Text(
                      myCategory.name,
                      style: TextStyle(
                        fontFamily: 'Montserrat',
                        fontWeight: FontWeight.bold,
                        fontSize: 24,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                DateAndTotalPriceLabel(
                  date: "19 September",
                  price: 22.50,
                ),
                SizedBox(
                  height: 20,
                ),
                Column(
                  children: [
                    CategoryTransactionDetailCard(
                      description: "Movie Tickets",
                      price: 20,
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    CategoryTransactionDetailCard(
                      description: "E-book",
                      price: 2.50,
                    ),
                  ],
                ),
                DateAndTotalPriceLabel(
                  date: "18 September",
                  price: 22.50,
                ),
                SizedBox(
                  height: 20,
                ),
                Column(
                  children: [
                    CategoryTransactionDetailCard(
                      description: "Phill Collins album",
                      price: 16.40,
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    CategoryTransactionDetailCard(
                      description: "Netflix subscription",
                      price: 19.90,
                    ),
                  ],
                ),
                DateAndTotalPriceLabel(
                  date: "12 September",
                  price: 12,
                ),
                SizedBox(
                  height: 20,
                ),
                Column(
                  children: [
                    CategoryTransactionDetailCard(
                      description: "Museum ticket",
                      price: 12,
                    ),
                  ],
                ),
                DateAndTotalPriceLabel(
                  date: "6 September",
                  price: 9.20,
                ),
                SizedBox(
                  height: 20,
                ),
                Column(
                  children: [
                    CategoryTransactionDetailCard(
                      description: "Audiobooks",
                      price: 9.20,
                    ),
                  ],
                ),
                DateAndTotalPriceLabel(
                  date: "4 September",
                  price: 88,
                ),
                SizedBox(
                  height: 20,
                ),
                Column(
                  children: [
                    CategoryTransactionDetailCard(
                      description: "Escape room",
                      price: 54,
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    CategoryTransactionDetailCard(
                      description: "Bowling",
                      price: 34,
                    ),
                  ],
                ),
              ],
            ),
            SizedBox(
              width: 40,
            ),
          ],
        ),
      ),
    );
  }
}
