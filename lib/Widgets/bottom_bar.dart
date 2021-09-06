import 'package:entire/Models/product.dart';
import 'package:entire/Providers/products_provider.dart';
import 'package:entire/Widgets/item_count.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class BottomBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Product product = Provider.of<Product>(context, listen: false);
    return Container(
      height: 120,
      padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 10),
      decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(30),
            topRight: Radius.circular(30),
          ),
          boxShadow: [
            BoxShadow(
                blurRadius: 2, color: Colors.grey.shade400, spreadRadius: 1)
          ]),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              ItemCount(),
              Text(
                "Total :\$${product.price}",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
              ),
            ],
          ),
          Row(
            children: [
              Consumer<Product>(
                builder: (ctx, product, child) => GestureDetector(
                  onTap: () {
                    Provider.of<ProductsProvider>(context, listen: false)
                        .addToFavoriteItems(product.id);
                    product.toggleFavorite();
                  },
                  child: Container(
                    height: 50,
                    width: 50,
                    child: product.isFavorite
                        ? Icon(
                            Icons.favorite,
                            color: Colors.red,
                          )
                        : Icon(Icons.favorite_border),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(12),
                        color: Colors.grey.shade100),
                  ),
                ),
              ),
              Expanded(
                flex: 3,
                child: Container(
                  height: 50,
                  margin: const EdgeInsets.only(left: 50),
                  decoration: BoxDecoration(
                    color: Theme.of(context).primaryColor,
                    borderRadius: BorderRadius.circular(15),
                  ),
                  alignment: Alignment.center,
                  child: Text(
                    "Add to Cart",
                    style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.w600,
                        fontSize: 18),
                  ),
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}
