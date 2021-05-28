import 'package:flutter/material.dart';
import 'navigation/bottomnav.dart';

void main() {
  runApp(MyApp());
}

const PrimaryColor = const Color(0xFFFFFFFF);

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(primaryColor: PrimaryColor),
      home: BottomNav(),
    );
  }
}
