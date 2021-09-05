import 'package:entire/Models/product.dart';
import 'package:entire/Providers/products_provider.dart';
import 'package:entire/Widgets/bottom_bar.dart';
import 'package:entire/Widgets/item_colors.dart';
import 'package:entire/Widgets/item_sizes.dart';
import 'package:entire/Widgets/product_detailedImage.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class ProductDetailsScreen extends StatelessWidget {
  static String routeName = "ProductDetails";

  @override
  Widget build(BuildContext context) {
    String productId = ModalRoute.of(context)!.settings.arguments as String;
    Product product = Provider.of<ProductsProvider>(context, listen: false)
        .getProductById(productId);

    return ChangeNotifierProvider.value(
      value: product,
      child: Scaffold(
        appBar: AppBar(
          title: const Text("Product"),
          centerTitle: true,
          backgroundColor: Colors.transparent,
          elevation: 0,
        ),
        bottomNavigationBar: BottomBar(),
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 10),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                ProductDetailedImage(
                  id: product.id,
                  image: product.picture,
                  price: product.price,
                  title: product.title,
                ),
                const SizedBox(
                  height: 15,
                ),
                Text(
                  "Item Size",
                  style: Theme.of(context).textTheme.headline6,
                ),
                ItemSizes(),
                const SizedBox(
                  height: 15,
                ),
                Text(
                  "Colors",
                  style: Theme.of(context).textTheme.headline6,
                ),
                ItemColors(),
                const SizedBox(
                  height: 15,
                ),
                Text(
                  "Description",
                  style: Theme.of(context).textTheme.headline6,
                ),
                UnderLine(),
                const SizedBox(
                  height: 10,
                ),
                Text(
                  "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised ing ",
                  style: TextStyle(
                      color: Colors.grey, fontWeight: FontWeight.w500),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class UnderLine extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 2,
      width: 90,
      color: Colors.black26,
      margin: const EdgeInsets.only(left: 6, top: 2),
    );
  }
}
