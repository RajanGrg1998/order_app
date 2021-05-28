import 'package:flutter/material.dart';
import '../avatarcreditleft.dart';
import '../listviewadvancecredit.dart';
import '../spentcontainer.dart';

class BuiltPortraitAdvanceCredit extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          AvatarCreditLeft(),
          SpentContainer(),
          ListViewsAdvanceCredit(),
        ],
      ),
    );
  }
}
