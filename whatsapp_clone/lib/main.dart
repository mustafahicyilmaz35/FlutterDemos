import 'package:flutter/material.dart';

import 'home.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Whatsapp Clone Demo',
      theme: ThemeData(
        
        primaryColor: Color(0xff075E54),
        accentColor: Color(0xFF25D366)
      ),
      home: Home(),
    );
  }
}
