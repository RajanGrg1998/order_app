import 'package:flutter/material.dart';

class SpentContainer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 32, left: 16, right: 16, bottom: 24.9),
      height: 70,
      decoration: BoxDecoration(
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.1),
          ),
        ],
        color: Colors.white,
        borderRadius: BorderRadius.circular(8),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Expanded(
            child: Container(
              //color: Colors.deepPurple,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    margin: EdgeInsets.only(bottom: 4),
                    child: Text(
                      'Rs.3600',
                      style: TextStyle(
                          fontFamily: 'Roboto-Medium',
                          fontSize: 14,
                          fontWeight: FontWeight.w500),
                    ),
                  ),
                  Text(
                    'Spent',
                    style: TextStyle(
                      fontFamily: 'Roboto-Regular',
                      fontSize: 10,
                    ),
                  ),
                ],
              ),
            ),
          ),
          Container(
            height: 53,
            child: VerticalDivider(color: Colors.black12),
          ),
          Expanded(
            child: Container(
              //color: Colors.deepOrange,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    margin: EdgeInsets.only(bottom: 4),
                    child: Text(
                      'Rs. 11000',
                      style: TextStyle(
                          fontFamily: 'Roboto-Medium',
                          fontSize: 14,
                          fontWeight: FontWeight.w500),
                    ),
                  ),
                  Text(
                    'Limit',
                    style: TextStyle(
                      fontFamily: 'Roboto-Regular',
                      fontSize: 10,
                    ),
                  ),
                ],
              ),
            ),
          ),
          Container(
            height: 53,
            child: VerticalDivider(color: Colors.black12),
          ),
          Expanded(
            child: Container(
              //color: Colors.cyan,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    margin: EdgeInsets.only(bottom: 4),
                    child: Text(
                      'Rs. 1000',
                      style: TextStyle(
                          fontFamily: 'Roboto-Medium',
                          fontSize: 14,
                          fontWeight: FontWeight.w500),
                    ),
                  ),
                  Text(
                    'Bonus',
                    style: TextStyle(
                      fontFamily: 'Roboto-Regular',
                      fontSize: 10,
                    ),
                  ),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
