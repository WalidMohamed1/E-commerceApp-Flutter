import 'package:flutter/material.dart';
import '../shared/component/ShopComponents.dart';
class ProductDetailScreen extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Product"),),
      body: buildProductDetails()
    );
  }
}


