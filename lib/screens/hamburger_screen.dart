import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:save/data/constants.dart';

class HamburgerScreen extends StatefulWidget {
  final Function(int) menuCallBack;

  const HamburgerScreen({Key key, this.menuCallBack}) : super(key: key);
  @override
  _HamburgerScreenState createState() => _HamburgerScreenState();
}

List<Map> menu = [
  {'icon': FontAwesomeIcons.home, 'text': 'Home'},
  {'icon': FontAwesomeIcons.creditCard, 'text': 'Transactions'},
  {'icon': FontAwesomeIcons.chartLine, 'text': 'Analytics'},
  {'icon': FontAwesomeIcons.wallet, 'text': 'Budget'},
  {'icon': FontAwesomeIcons.user, 'text': 'Profile'},
];

class _HamburgerScreenState extends State<HamburgerScreen> {
  int selectedMenu = 0;

  Widget createMenuOptions(int index) {
    return FlatButton(
      padding: EdgeInsets.zero,
      onPressed: () {
        setState(() {
          selectedMenu = index;
          widget.menuCallBack(index);
        });
      },
      child: Row(
        children: [
          FaIcon(
            menu[index]["icon"],
            color: selectedMenu == index
                ? kPrimaryColor
                : Color(0xffd8d8d8).withOpacity(.30),
            size: 20,
          ),
          SizedBox(
            width: 10,
          ),
          Text(
            menu[index]["text"],
            style: TextStyle(
              color: selectedMenu == index
                  ? kPrimaryColor
                  : Color(0xffd8d8d8).withOpacity(.30),
              fontWeight: FontWeight.bold,
              fontFamily: 'Montserrat',
              fontSize: 16,
            ),
          ),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(top: 30, bottom: 40, left: 10),
      decoration: BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
          colors: [kLightSecondaryColor, kPrimaryColor],
        ),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Padding(
            padding: EdgeInsets.only(right: 16),
            child: Row(
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.circular(20),
                  child: Image(
                    image: AssetImage('assets/images/user0.jpg'),
                    height: 65,
                    width: 65,
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
                        color: Colors.black,
                        fontFamily: "Montserrat",
                      ),
                    ),
                    Text(
                      "nicolauswanderholm@yahoo.com",
                      style: TextStyle(
                        color: Colors.black,
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
          Column(
            children: menu
                .asMap()
                .entries
                .map((e) => createMenuOptions(e.key))
                .toList(),
          ),
          Row(
            children: [
              FaIcon(
                FontAwesomeIcons.signOutAlt,
                color: kLightSecondaryColor,
              ),
              SizedBox(
                width: 10,
              ),
              Text(
                "Logout",
                style: TextStyle(
                  color: kLightSecondaryColor,
                  fontWeight: FontWeight.bold,
                  fontSize: 14,
                  fontFamily: 'Montserrat',
                ),
              )
            ],
          )
        ],
      ),
    );
  }
}

// int _currentIndex = 0;
// final tabsList = [
//   Home(),
//   TransactionScreen(),
//   AnalyticsScreen(),
//   BudgetScreen(),
//   ProfileScreen(),
// ];
// onTap: () {
//   setState(() {
//     selectedMenu = index;
//     widget.menuCallBack(index);
//   });
// },
// child: Padding(
//   padding: EdgeInsets.symmetric(
//     vertical: 16,
//   ),
// child: Row(
//   children: [
//     FaIcon(
//       menu[index]["icon"],
//       color: selectedMenu == index
//           ? kLightSecondaryColor
//           : kDarkSecondaryColor,
//       size: 20,
//     ),
//     SizedBox(
//       width: 10,
//     ),
//     Text(
//       menu[index]["text"],
//       style: TextStyle(
//         color: selectedMenu == index
//             ? kLightSecondaryColor
//             : kDarkSecondaryColor,
//         fontWeight: FontWeight.bold,
//         fontFamily: 'Montserrat',
//         fontSize: 16,
//       ),
//     ),
//   ],
