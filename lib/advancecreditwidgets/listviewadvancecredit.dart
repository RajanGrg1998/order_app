import 'package:flutter/material.dart';

import '../cardmodel.dart';

class ListViewsAdvanceCredit extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Container(
      margin: EdgeInsets.fromLTRB(16, 24.9, 16, 119.1),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(5),
        boxShadow: [
          BoxShadow(
            color: Color(0xff000000).withOpacity(0.5),
            blurRadius: 2,
            offset: Offset(0, 3), // changes position of shadow
          ),
        ],
      ),
      height: size.height * 0.46,
      child: ListView.builder(
        itemCount: cards.length,
        itemBuilder: (context, index) {
          return Container(
            padding: EdgeInsets.all(5),
            margin: EdgeInsets.fromLTRB(16, 16, 16, 9.5),
            decoration: BoxDecoration(
              color: Colors.white,
              border: Border(
                bottom: BorderSide(
                  width: 1.0,
                  color: Color(0xffF2F2F2),
                ),
              ),
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      cards[index].user, //
                      style: TextStyle(
                          fontFamily: 'Roboto-Medium',
                          fontSize: 14,
                          fontWeight: FontWeight.w500),
                    ),
                    Container(
                      margin: EdgeInsets.only(top: 5, bottom: 9.5),
                      child: Text(
                        cards[index].date,
                        style: TextStyle(
                            fontFamily: 'Roboto-Regular',
                            fontSize: 10,
                            color: Color(0xff000000).withOpacity(0.5),
                            fontWeight: FontWeight.w400),
                      ),
                    ),
                  ],
                ),
                Text(
                  cards[index].credit,
                  style: TextStyle(
                      fontFamily: 'Roboto',
                      fontSize: 14,
                      fontWeight: FontWeight.w400),
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}
