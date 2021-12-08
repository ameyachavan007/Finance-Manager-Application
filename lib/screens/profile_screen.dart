import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:save/data/constants.dart';
import 'package:save/screens/registration_page.dart';
import 'package:save/widgets/profile_list_tile.dart';
import 'package:save/widgets/profile_tile_title.dart';

class ProfileScreen extends StatelessWidget {
  final List<IconData> iconData = [
    FontAwesomeIcons.tag,
    FontAwesomeIcons.rupeeSign,
    FontAwesomeIcons.bell,
    FontAwesomeIcons.user,
    FontAwesomeIcons.award,
    FontAwesomeIcons.questionCircle,
    FontAwesomeIcons.fileAlt,
    FontAwesomeIcons.envelope,
  ];
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: ListView(
          children: [
            Padding(
              padding: EdgeInsets.only(
                left: 16,
                top: 20,
              ),
              child: Text(
                "Profile",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 24,
                  fontFamily: "Montserrat",
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(left: 16, right: 16, top: 20),
              child: Row(
                children: [
                  ClipRRect(
                    borderRadius: BorderRadius.circular(20),
                    child: Image(
                      image: AssetImage('assets/images/user0.jpg'),
                      height: 60,
                      width: 60,
                      fit: BoxFit.cover,
                    ),
                  ),
                  SizedBox(
                    width: 15,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Nicolaus Wanderholm",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 16,
                          fontFamily: "Montserrat",
                        ),
                      ),
                      Text(
                        "nicolauswanderholm@yahoo.com",
                        style: TextStyle(
                          color: kDarkSecondaryColor.withOpacity(0.84),
                          fontWeight: FontWeight.w600,
                          fontSize: 12,
                          fontFamily: "Montserrat",
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.only(
                top: 20,
                left: 16,
                right: 16,
              ),
              child: Container(
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
                  padding:
                      EdgeInsets.only(top: 20, left: 16, right: 16, bottom: 20),
                  child: Column(
                    children: [
                      Row(
                        children: [
                          ClipOval(
                            child: Container(
                              height: 15,
                              width: 15,
                              color: kExpenseColor,
                            ),
                          ),
                          SizedBox(
                            width: 20,
                          ),
                          Text(
                            "Invite friends and get 50%\ndiscount for a Pro subscription!",
                            style: TextStyle(
                              fontSize: 14,
                              fontFamily: "Montserrat",
                            ),
                          ),
                        ],
                      ),
                      Padding(
                        padding: EdgeInsets.only(
                          top: 20,
                          bottom: 10,
                        ),
                        child: Center(
                          child: Container(
                            height: 40,
                            decoration: BoxDecoration(
                              color: kPrimaryColor,
                              borderRadius: BorderRadius.circular(5),
                            ),
                            child: Center(
                              child: Text(
                                "Get Pro now",
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
                      ),
                      Text(
                        "Dismiss",
                        style: TextStyle(
                            fontSize: 14,
                            fontFamily: "Montserrat",
                            color: kPrimaryColor,
                            fontWeight: FontWeight.w600),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                ProfileTileTitle(name: "Genral"),
                ProfileListTile(
                  iconData: iconData,
                  i: 0,
                  name: "Category",
                  description: "15 expenses, 2 incomes",
                ),
                ProfileListTile(
                  iconData: iconData,
                  i: 1,
                  name: "Currency",
                  description: "Rupee Rs",
                ),
                ProfileListTile(
                  iconData: iconData,
                  i: 2,
                  name: "Notifications",
                  description: "Turned off",
                ),
                ProfileTileTitle(name: "Profile Settings"),
                GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => RegistrationPage(),
                      ),
                    );
                  },
                  child: ProfileListTile(
                    iconData: iconData,
                    i: 3,
                    name: "Edit Profile",
                    description: "E-mail, password, etc.",
                  ),
                ),
                ProfileListTile(
                  iconData: iconData,
                  i: 4,
                  name: "Account type",
                  description: "Basic",
                ),
                ProfileTileTitle(
                  name: "Support",
                ),
                ProfileListTile(
                  iconData: iconData,
                  i: 5,
                  name: "Get help",
                  description: "Ask us",
                ),
                ProfileListTile(
                  iconData: iconData,
                  i: 6,
                  name: "Terms&Conditions",
                  description: "Agree?",
                ),
              ],
            ),
            SizedBox(
              height: 20,
            )
          ],
        ),
      ),
    );
  }
}
