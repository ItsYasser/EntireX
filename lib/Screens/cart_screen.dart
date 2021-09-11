import 'package:entire/Providers/cart_provider.dart';
import 'package:entire/Widgets/appbar.dart';
import 'package:entire/Widgets/cart_card.dart';
import 'package:entire/Widgets/checkout_button.dart';
import 'package:entire/Widgets/custom_text.dart';

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class CartScreen extends StatelessWidget {
  static String routeName = "CartScreen";

  @override
  Widget build(BuildContext context) {
    var cart = Provider.of<CartProvider>(context);
    return Scaffold(
      appBar: myAppBar("Cart"),
      body: SingleChildScrollView(
        child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 17),
            child: Column(
              children: [
                Container(
                  height: MediaQuery.of(context).size.height * 0.6,
                  margin: const EdgeInsets.only(bottom: 10),
                  child: ListView.builder(
                      itemCount: cart.itemCount,
                      itemBuilder: (ctx, i) {
                        var oneCart = cart.items.values.toList()[i];
                        return CartCard(
                          id: cart.items.keys.toList()[i],
                          image: oneCart.image,
                          price: oneCart.price,
                          title: oneCart.title,
                          prodQuantity: oneCart.quantity,
                        );
                      }),
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
                      CustomText(
                        text: "Total",
                        color: Colors.grey,
                        fontSize: 18,
                        fontWeight: FontWeight.w600,
                      ),
                      CustomText(
                        text: "\$ " + cart.totalAmount.toStringAsFixed(2),
                        fontSize: 17,
                        fontWeight: FontWeight.bold,
                      ),
                      CheckOutButton(),
                    ],
                  ),
                ),
              ],
            )),
      ),
    );
  }
}
