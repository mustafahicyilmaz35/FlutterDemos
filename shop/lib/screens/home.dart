import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
        child: Container(
            color: Colors.red,
            alignment: Alignment.topLeft,
            padding: EdgeInsets.only(top: 50.0),
            child: Column(
              children: <Widget>[
                Row(
                  textDirection: TextDirection.ltr,
                  children: <Widget>[
                    Text(
                      "ASUS Laptop",
                      textDirection: TextDirection.ltr,
                      style: TextStyle(fontSize: 22.0),
                    ),
                    Expanded(
                      child: Text(
                        " 16 GB RAM 128 GB SSD İntel i7",
                        textDirection: TextDirection.ltr,
                        style: TextStyle(fontSize: 22.0),
                      ),
                    )
                  ],
                ),Row(
                  textDirection: TextDirection.ltr,
                  children: <Widget>[
                    Text(
                      "HP Laptop",
                      textDirection: TextDirection.ltr,
                      style: TextStyle(fontSize: 22.0),
                    ),
                    Expanded(
                      child: Text(
                        " 32 GB RAM 512 GB SSD İntel i7",
                        textDirection: TextDirection.ltr,
                        style: TextStyle(fontSize: 22.0),
                      ),
                    )
                  ],
                ),
                Directionality(
                  child: OrderButton(),
                  textDirection: TextDirection.ltr,
                )
                
              ],
            )));
  }
}
class OrderButton extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    var button = Container(
      margin: EdgeInsets.only(top:50.0),
      child: RaisedButton(
        elevation: 5.0,
        child: Text("Go to check out"),
        onPressed: (){},
      ),
    );
    return button;
  }

}
