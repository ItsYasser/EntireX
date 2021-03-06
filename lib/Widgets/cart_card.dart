import 'package:entire/Providers/cart_provider.dart';
import 'package:entire/Widgets/circle_button.dart';
import 'package:entire/Widgets/custom_text.dart';
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
    return Dismissible(
        key: ValueKey(id),
        background: Card(
          color: Theme.of(context).errorColor,

          child: Align(
            alignment: Alignment.centerRight,
            child: Padding(
              padding: const EdgeInsets.only(right: 15),
              child: Icon(
                Icons.delete,
                color: Colors.white,
                size: 40,
              ),
            ),
          ),
          // alignment: Alignment.centerRight,
          // padding: EdgeInsets.only(right: 20),
          margin: const EdgeInsets.only(bottom: 30),
        ),
        direction: DismissDirection.endToStart,
        onDismissed: (direction) {
          Provider.of<CartProvider>(context, listen: false).removeItem(id);
        },
        child: Card(
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
                                  Provider.of<CartProvider>(context,
                                          listen: false)
                                      .decreaseQuantity(id);
                                },
                                child: CircleButton(
                                  icon: Icons.remove,
                                ),
                              ),
                              CustomText(
                                text: prodQuantity.toString(),
                                fontSize: 16,
                                fontWeight: FontWeight.bold,
                                padding:
                                    const EdgeInsets.symmetric(horizontal: 7),
                              ),
                              GestureDetector(
                                onTap: () {
                                  Provider.of<CartProvider>(context,
                                          listen: false)
                                      .increaseQuantity(id);
                                },
                                child: CircleButton(
                                  icon: Icons.add,
                                  backGroundColor:
                                      Theme.of(context).primaryColor,
                                  iconColor: Colors.white,
                                ),
                              ),
                            ],
                          ),
                          CustomText(
                            text:
                                "\$${(price * prodQuantity).toStringAsFixed(2)}",
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ));
  }
}
