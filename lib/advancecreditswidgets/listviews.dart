import 'package:flutter/material.dart';

import '../cardmodel.dart';

class ListViews extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        height: 374,
        //start of the third container of column widget to hold data list
        margin: EdgeInsets.only(left: 16, right: 16, bottom: 69.1),
        width: double.infinity,
        decoration: BoxDecoration(
          color: Color(0xffF2F2F2),
          borderRadius: BorderRadius.all(
            Radius.circular(10),
          ),
        ),
        child: Card(
          elevation: 2,
          child: ListView.builder(
            itemCount: cards.length,
            itemBuilder: (context, index) {
              return Stack(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      margin: EdgeInsets.only(
                          left: 16, right: 16, top: 16, bottom: 0),
                      height: 39,
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Container(
                                margin: EdgeInsets.only(bottom: 4),
                                child: Text(
                                  cards[index].user, //
                                  style: TextStyle(
                                      fontFamily: 'Roboto-Medium',
                                      fontSize: 14,
                                      fontWeight: FontWeight.w500),
                                ),
                              ),
                              Opacity(
                                opacity: 0.5,
                                child: Text(
                                  cards[index].date,
                                  style: TextStyle(
                                      fontFamily: 'Roboto-Regular',
                                      fontSize: 10,
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
                    ),
                  ),
                  Divider(
                    color: Color(0xffF2F2F2),
                  )
                ],
              );
            },
          ),
        ),
      ),
    );
  }
}
