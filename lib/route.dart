import 'package:flutter/material.dart';
import 'package:order_app/bottomnav.dart';

//route names
const String credit = 'credit';

//control our route flow
Route<dynamic> controller(RouteSettings settings) {
  switch (settings.name) {
    case credit:
      return MaterialPageRoute(builder: (context) => BottomNav());
    default:
      throw ('error');
  }
}
