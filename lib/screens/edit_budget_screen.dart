import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:save/data/constants.dart';

class EditBudgetScreen extends StatelessWidget {
  final List<IconData> iconData = [
    FontAwesomeIcons.film,
    FontAwesomeIcons.key,
    FontAwesomeIcons.shoppingCart,
    FontAwesomeIcons.pills,
    FontAwesomeIcons.basketballBall,
    FontAwesomeIcons.suitcaseRolling,
  ];
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: ListView(
          children: [
            Padding(
              padding: EdgeInsets.only(left: 16, top: 10),
              child: Row(
                children: [
                  GestureDetector(
                    onTap: () {},
                    child: Icon(
                      FontAwesomeIcons.arrowLeft,
                      color: kPrimaryColor,
                    ),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Text(
                    "Set Budget",
                    style: TextStyle(
                      fontFamily: 'Montserrat',
                      fontWeight: FontWeight.bold,
                      fontSize: 24,
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.only(left: 16, right: 16, top: 20),
              child: Container(
                width: MediaQuery.of(context).size.width,
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
                child: Column(
                  children: [
                    Padding(
                      padding: EdgeInsets.fromLTRB(16, 20, 16, 0),
                      child: TextField(
                        decoration: InputDecoration(
                          hintText: "Enter amount",
                        ),
                        style: TextStyle(
                          fontSize: 18,
                          fontFamily: 'Montserrat',
                        ),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(top: 20, left: 16, right: 8),
                      child: Row(
                        children: [
                          ClipOval(
                            child: Container(
                              height: 15,
                              width: 15,
                              color: kPrimaryColor,
                            ),
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          Text(
                            "Last month your budget was Rs. 1750",
                            style: TextStyle(
                              fontFamily: 'Montserrat',
                              fontSize: 15,
                            ),
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(left: 16, right: 16, top: 20),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "Budget per category",
                                style: TextStyle(
                                  fontFamily: 'Montserrat',
                                  fontSize: 16,
                                  fontWeight: FontWeight.w600,
                                ),
                              ),
                              SizedBox(
                                height: 5,
                              ),
                              Text(
                                "Set budget for 6 categories",
                                style: TextStyle(
                                  fontFamily: 'Montserrat',
                                  fontSize: 16,
                                  color: kDarkSecondaryColor.withOpacity(0.84),
                                ),
                              ),
                            ],
                          ),
                          Switch(
                            value: false,
                            onChanged: null,
                            activeColor: kPrimaryColor,
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(
                        top: 20,
                        bottom: 20,
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          SetBudgetCard(
                            iconData: iconData,
                            i: 0,
                            name: "Entertainment",
                          ),
                          SetBudgetCard(
                            iconData: iconData,
                            i: 1,
                            name: "Housing",
                          ),
                          SetBudgetCard(
                            iconData: iconData,
                            i: 2,
                            name: "Grocery",
                          ),
                          SetBudgetCard(
                            iconData: iconData,
                            i: 3,
                            name: "Health",
                          ),
                          SetBudgetCard(
                            iconData: iconData,
                            i: 4,
                            name: "Sports",
                          ),
                          SetBudgetCard(
                            iconData: iconData,
                            i: 5,
                            name: "Travel",
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(bottom: 20, left: 16, right: 16),
                      child: Center(
                        child: Container(
                          height: 40,
                          decoration: BoxDecoration(
                            color: kPrimaryColor,
                            borderRadius: BorderRadius.circular(5),
                          ),
                          child: Center(
                            child: Text(
                              "Continue",
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
                    )
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class SetBudgetCard extends StatelessWidget {
  const SetBudgetCard({
    Key key,
    @required this.iconData,
    this.i,
    this.name,
  }) : super(key: key);

  final List<IconData> iconData;
  final int i;
  final String name;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: 16, right: 16, bottom: 20),
      child: Row(
        children: [
          FaIcon(
            iconData[i],
            color: kPrimaryColor,
          ),
          SizedBox(
            width: 20,
          ),
          Text(
            "$name",
            style: TextStyle(
              fontFamily: 'Montserrat',
              fontSize: 16,
            ),
          ),
          Spacer(),
          Container(
            width: 75.0,
            child: TextField(
              decoration: InputDecoration(),
              style: TextStyle(
                  fontSize: 16,
                  fontFamily: 'Montserrat',
                  fontWeight: FontWeight.bold),
            ),
          ),
        ],
      ),
    );
  }
}
