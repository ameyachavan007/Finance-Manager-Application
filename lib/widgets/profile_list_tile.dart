import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:save/data/constants.dart';

class ProfileListTile extends StatelessWidget {
  const ProfileListTile({
    Key key,
    @required this.iconData,
    this.name,
    this.description,
    this.i,
  }) : super(key: key);

  final List<IconData> iconData;
  final String name;
  final String description;
  final int i;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: 16, right: 16, bottom: 10),
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
          padding: EdgeInsets.only(left: 16, right: 16, top: 10, bottom: 10),
          child: Row(
            children: [
              FaIcon(
                iconData[i],
                color: kPrimaryColor,
              ),
              SizedBox(
                width: 20,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "$name",
                    style: TextStyle(
                        fontSize: 16,
                        fontFamily: "Montserrat",
                        fontWeight: FontWeight.w600),
                  ),
                  Text(
                    "$description",
                    style: TextStyle(
                        fontSize: 16,
                        fontFamily: "Montserrat",
                        color: kDarkSecondaryColor.withOpacity(0.84),
                        fontWeight: FontWeight.w600),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
