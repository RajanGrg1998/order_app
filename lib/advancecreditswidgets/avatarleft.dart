import 'package:flutter/material.dart';

class AvatarLeft extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 42),
      width: double.infinity,
      height: 100,
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage("img/line.png"),
          fit: BoxFit.fill,
        ),
      ),
      child: CircleAvatar(
        backgroundColor: Color(0xff30B700),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Rs.7400',
              style: TextStyle(
                  color: Colors.white,
                  fontFamily: 'Roboto-Medium',
                  fontSize: 20),
            ),
            Text(
              'left',
              style: TextStyle(
                  color: Colors.white,
                  fontFamily: 'Roboto-Regular',
                  fontSize: 10),
            ),
          ],
        ),
      ),
    );
  }
}
