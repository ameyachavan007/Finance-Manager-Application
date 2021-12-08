import 'package:flutter/material.dart';

class ProfileTileTitle extends StatelessWidget {
  const ProfileTileTitle({
    Key key,
    this.name,
  }) : super(key: key);
  final String name;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: 16, right: 16, top: 30, bottom: 15),
      child: Text(
        "$name",
        style: TextStyle(
            fontSize: 16,
            fontFamily: "Montserrat",
            fontWeight: FontWeight.bold),
      ),
    );
  }
}
