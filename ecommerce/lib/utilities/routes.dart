import 'package:ecommerce/screens/productDetail.dart';
import 'package:flutter/material.dart';

import 'constans.dart';

class Routes{
  static final routes = <String,WidgetBuilder>{
    Constans.ROUTE_PRODUCT_DETAIL:(BuildContext context)=> ProductDetail()
  };
}