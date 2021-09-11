import 'package:entire/Providers/cart_provider.dart';
import 'package:entire/Widgets/circle_button.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class CartCard extends StatelessWidget {
  final String image, title;
  final double price;
  final int prodQuantity;
  final String id;
  CartCard(
      {required this.image,
      required this.title,
      required this.price,
      required this.prodQuantity,
      required this.id});

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: const EdgeInsets.only(bottom: 30),
      child: Container(
        height: 110,
        padding: const EdgeInsets.symmetric(vertical: 12, horizontal: 15),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Expanded(
              child: Image(
                image: NetworkImage(image),
              ),
            ),
            const SizedBox(
              width: 12,
            ),
            Expanded(
              flex: 2,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    title,
                    style: Theme.of(context).textTheme.headline6,
                  ),
                  Text(
                    "Size : 8 UK",
                    style: Theme.of(context)
                        .textTheme
                        .subtitle2!
                        .copyWith(color: Colors.grey),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          GestureDetector(
                            onTap: () {
                              Provider.of<CartProvider>(context, listen: false)
                                  .decreaseQuantity(id);
                            },
                            child: CircleButton(
                              icon: Icons.remove,
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 7),
                            child: Text(
                              prodQuantity.toString(),
                              style: TextStyle(
                                  fontWeight: FontWeight.bold, fontSize: 16),
                            ),
                          ),
                          GestureDetector(
                            onTap: () {
                              Provider.of<CartProvider>(context, listen: false)
                                  .increaseQuantity(id);
                            },
                            child: CircleButton(
                              icon: Icons.add,
                              backGroundColor: Theme.of(context).primaryColor,
                              iconColor: Colors.white,
                            ),
                          ),
                        ],
                      ),
                      Text(
                        "\$${(price * prodQuantity).toStringAsFixed(2)}",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 18,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
