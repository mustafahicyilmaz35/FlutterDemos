import 'dart:core' as prefix0;
import 'dart:core';

import 'package:flutter/material.dart';

void main() {
  //Bir widget başlatıp ekrana basar.(Widgetlar flutter ın herşeyidir. Flutter Widget Mantığı üzerine kuruludur.)
  //Center widget ını kullandık
  //MaterialApp widgeti google tarafından hazırlanan daha global bir temadır. MaterialApp ile widget i tanımladık. MaterialApp ile widgetımıza özellik tanımlayabiliriz.
  //Ana widget olarak Material widgeti nı home etiketi ile birlikte kullanacağız.
  runApp(HelloWorld());
}

class HelloWorld extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    
    return MaterialApp(
      title: "My First App",
      home: Scaffold(
        appBar: AppBar(
          title: Text("App Bar Title"),
        ),
        body: MainPage()
      ));
  }

}

class MainPage extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    
    return Material(
            color: Colors.red,
            child: Center(
              child: Text(
                "Merhaba Dünya,  " + sayHello() ,
                textDirection: TextDirection.ltr,
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 50.0,
                ),
              ),
            ));
  }

}
String sayHello(){
  DateTime now = new prefix0.DateTime.now().toUtc();
  int hour = now.hour;
  if(hour <= 10){
    return "Günaydın!!";
  }
  else{
    return "iyi akşamlar";
  }
}
