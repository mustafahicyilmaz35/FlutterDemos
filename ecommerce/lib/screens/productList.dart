import 'package:ecommerce/widgets/productListRow.dart';
import 'package:flutter/material.dart';

class ProductList extends StatelessWidget {
  BuildContext context;
  @override
  Widget build(BuildContext context) {
    this.context = context;
    return Scaffold(
        appBar: AppBar(
          title: Text("Product List", style: TextStyle(color: Colors.black)),
          backgroundColor: Colors.white,
          centerTitle: true,
        ),
        body: _buildProductList());
  }

  _buildProductList() {
    Size screenSize = MediaQuery.of(context).size;
    return Container(
      child: ListView.builder(
        itemCount: 5,
        itemBuilder: (context, index) {
          if (index == 0) {
            return _buildFilterWidgets(screenSize);
          } else if (index == 4) {
            return SizedBox(
              height: 12.0,
            );
          } else {
            return _buildProductListRow();
          }
        },
      ),
    );
  }

  _buildFilterWidgets(Size screenSize) {
    return Container(
      margin: EdgeInsets.all(12.0),
      width: screenSize.width,
      child: Card(
        child: Container(
          padding: EdgeInsets.symmetric(vertical: 12.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              _buildFilterButton("Sırala"),
              Container(
                color: Colors.black,
                width: 2.0,
                height: 24.0,
              ),
              _buildFilterButton("Filtrele"),
            ],
          ),
        ),
      ),
    );
  }

  _buildFilterButton(String title) {
    return InkWell(
      onTap:(){
        print(title);
      },
      child: Row(
        children: <Widget>[
          Icon(Icons.arrow_drop_down, color: Colors.black),
          SizedBox(
            width: 2.0,
          ),
          Text(title)
        ],
      ),
    );
  }

  _buildProductListRow() {
    return ProductListRow(name:"Kazak",currentPrice:150, originalPrice:300, discount:50, imageUrl:"https://ktnimg.mncdn.com/mnresize/1500/1969/product-images/8KAK92932HT402/1500Wx1969H/8KAK92932HT402_G01_zoom1_V02.jpg");
  }
}
