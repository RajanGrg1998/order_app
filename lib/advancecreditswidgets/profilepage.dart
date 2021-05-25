import 'package:flutter/material.dart';
import 'package:order_app/advancecreditswidgets/avatarleft.dart';
import 'package:order_app/advancecreditswidgets/listviews.dart';
import 'package:order_app/advancecreditswidgets/spentcontainer.dart';

class ProfilePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffF4F4F4),
      appBar: AppBar(
        title: Center(
          child: Text(
            'Advance Credit',
            style: TextStyle(fontFamily: 'Roboto-Medium', fontSize: 16),
          ),
        ),
      ),
      body: Container(
        width: double.infinity,
        height: double.infinity,
        child: Column(
          children: [
            AvatarLeft(), // widget for avatar
            SpentContainer(), // widget for spent,limit,bonus
            ListViews(), // listview for users,creits and date
          ],
        ),
      ),
    );
  }
}
