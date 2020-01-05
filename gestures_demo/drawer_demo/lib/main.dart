import 'package:drawer_demo/screens/customerScreen.dart';
import 'package:drawer_demo/screens/home.dart';
import 'package:drawer_demo/screens/prouductScreen.dart';
import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Drawer Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Home(),
      routes: <String, WidgetBuilder>{
        CustomerScreen.routeName:(BuildContext context)=>new CustomerScreen(),
        ProductScreen.routeName:(BuildContext context)=>new ProductScreen()
      },
    );
  }
}
