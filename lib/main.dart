import 'package:flutter/material.dart';
import 'package:milko/pages/home_page.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Milco",
      initialRoute: "home",
      routes: {
        'home' : (BuildContext context) => HomePage(),
        // 'ranking': (BuildContext context) => RankingPage(),
      },
    );

  }
}
