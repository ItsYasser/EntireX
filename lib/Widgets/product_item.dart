import 'package:entire/Models/product.dart';
import 'package:entire/Screens/product_details_screen.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class ProductItem extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var product = Provider.of<Product>(context, listen: false);
    return GestureDetector(
      onTap: () {
        Navigator.pushNamed(context, ProductDetailsScreen.routeName,
            arguments: product.id);
      },
      child: Container(
        height: 190,
        width: 170,
        margin: const EdgeInsets.only(right: 20),
        padding: const EdgeInsets.fromLTRB(5, 3, 5, 5),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(8),
          color: Colors.white,
          // boxShadow: [BoxShadow(color: Colors.grey, blurRadius: 2)]),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                product.discount == 0
                    ? Spacer()
                    : Container(
                        padding: const EdgeInsets.symmetric(
                            vertical: 1, horizontal: 5),
                        decoration: BoxDecoration(
                            border: Border.all(
                                width: 1.2,
                                color: Theme.of(context).primaryColor),
                            borderRadius: BorderRadius.circular(20)),
                        child: Text(
                          "${product.discount}% Off",
                          style: TextStyle(
                              fontSize: 13,
                              fontWeight: FontWeight.bold,
                              color: Theme.of(context).primaryColor),
                        ),
                      ),
                Padding(
                  padding: const EdgeInsets.only(right: 5),
                  child: Consumer<Product>(
                    builder: (ctx, product, child) => GestureDetector(
                      onTap: () {
                        product.toggleFavorite();
                      },
                      child: Icon(
                        product.isFavorite
                            ? Icons.favorite
                            : Icons.favorite_border,
                        size: 20,
                        color: Theme.of(context).primaryColor,
                      ),
                    ),
                  ),
                ),
              ],
            ),
            Expanded(
              child: Hero(
                tag: product.id,
                child: Container(
                  padding: const EdgeInsets.all(20),
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: NetworkImage(product.picture),
                    ),
                  ),
                  // child: Image(
                  //   image: NetworkImage(product.picture),
                  // ),
                ),
              ),
            ),
            Text(
              product.title,
              overflow: TextOverflow.ellipsis,
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.w400,
              ),
            ),
            Text(
              "\$${product.price}",
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
          ],
        ),
      ),
    );
  }
}
