import 'package:flutter/material.dart';
import 'package:order_app/advancecreditwidgets/orientation/builtlandscapeadvancecredit.dart';
import 'package:order_app/advancecreditwidgets/orientation/builtportraitadvancecredit.dart';

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
      body: OrientationBuilder(
        builder: (context, orientation) => orientation == Orientation.portrait
            ? BuiltPortraitAdvanceCredit()
            : BuiltLandscapeAdvanceCredit(),
      ),
    );
  }
}
