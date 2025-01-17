import 'package:flutter/material.dart';
import 'package:hotel_booking_flutter_app/pages/splash_page.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primaryColor: Color(0xFF01b075)
      ),
      home: SplashPage(),
    );
  }
}
