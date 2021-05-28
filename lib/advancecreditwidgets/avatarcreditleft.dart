import 'package:flutter/material.dart';

class AvatarCreditLeft extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // var size = MediaQuery.of(context).size;
    return Container(
      margin: EdgeInsets.only(top: 42, bottom: 3),
      width: double.infinity,
      height: 115,
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage("assets/img/line.png"),
          fit: BoxFit.fitWidth,
        ),
      ),
      child: CircleAvatar(
        backgroundColor: Color(0xff30B700),
        child: Padding(
          padding: const EdgeInsets.only(top: 18.0),
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
      ),
    );
  }
}
