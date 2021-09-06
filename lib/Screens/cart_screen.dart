import 'package:entire/Widgets/appbar.dart';
import 'package:entire/Widgets/cart_card.dart';
import 'package:entire/Widgets/checkout_button.dart';

import 'package:flutter/material.dart';

class CartScreen extends StatelessWidget {
  static String routeName = "CartScreen";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: myAppBar("Cart"),
      body: SingleChildScrollView(
        child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 17),
            child: Column(
              children: [
                Container(
                  height: 500,
                  margin: const EdgeInsets.only(bottom: 10),
                  // padding: const EdgeInsets.only(bottom: 10),
                  child: ListView.builder(
                      itemCount: 8, itemBuilder: (ctx, i) => CartCard()),
                ),
                const Divider(
                  thickness: 1.5,
                  indent: 50,
                  endIndent: 50,
                ),
                SizedBox(
                  height: 110,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "Total",
                        style: TextStyle(
                            color: Colors.grey,
                            fontSize: 18,
                            fontWeight: FontWeight.w600),
                      ),
                      Text(
                        "\$ 30.15",
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 17),
                      ),
                      CheckOutButton()
                    ],
                  ),
                ),
              ],
            )),
      ),
    );
  }
}
