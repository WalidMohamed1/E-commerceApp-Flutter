import 'package:flutter/material.dart';
import '../shared/component/Button.dart';
import '../shared/component/ShopComponents.dart';

class CardScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Cart"),
        ),
        body: Stack(
          children: [
            ListView.builder(
            itemBuilder: (context, index) {
              return buildCartProduct();
            },
            itemCount: 2,
            padding: EdgeInsets.all(15.0),
          ),
            Column(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    buildButton(170, "Clear Cart", 13, Colors.white, Color.fromRGBO(244,0,20,0.9)),
                    buildButton(170, "Go to Checkout", 13, Color.fromRGBO(244,0,20,0.9), Colors.white),
                  ],
                ),
              ],
            ),
          ]
        )
    ,);
  }
}
