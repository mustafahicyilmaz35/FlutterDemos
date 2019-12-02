import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: CitiesSelectorWidget(),
    );
  }
}

class CitiesSelectorWidget extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => CitiesSelectorState();
}

class CitiesSelectorState extends State<CitiesSelectorWidget> {
  var cities = ["Ankara", "İstanbul", "İzmir"];
  var selectedCity;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("City Select App"),
      ),
      body: Container(
        child: Column(
          children: <Widget>[
            DropdownButton<String>(
              items: cities.map((String value) {
                return DropdownMenuItem<String>(
                  value: value,
                  child: Text(value),
                );
              }).toList(),
              value: selectedCity,
              onChanged: (String value) {
                setState(() {
                  selectedCity = value;
                });
              },
            ),
            Text("Seçilen şehir: " + selectedCity.toString())
          ],
        ),
      ),
    );
  }
}
