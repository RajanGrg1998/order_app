import 'package:flutter/material.dart';
import 'package:order_app/bottomnav.dart';
import 'package:responsive_framework/responsive_framework.dart';

import 'route.dart' as route;

void main() {
  runApp(MyApp());
}

const PrimaryColor = const Color(0xFFFFFFFF);

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(primaryColor: PrimaryColor),
      builder: (context, widget) => ResponsiveWrapper.builder(BottomNav(),
          maxWidth: 1200,
          minWidth: 480,
          defaultScale: true,
          breakpoints: [
            ResponsiveBreakpoint.resize(480, name: MOBILE),
            ResponsiveBreakpoint.autoScale(800, name: TABLET),
            ResponsiveBreakpoint.resize(1000, name: DESKTOP),
          ],
          background: Container(color: Color(0xFFF5F5F5))),
      //onGenerateRoute: route.controller,
      onGenerateRoute: route.controller,
      initialRoute: route.credit,
    );
  }
}
