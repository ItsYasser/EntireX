import 'package:entire/Providers/products_provider.dart';
import 'package:entire/Providers/promos_provider.dart';
import 'package:entire/Widgets/promos.dart';
import 'package:entire/Widgets/product_item.dart';
import 'package:entire/Widgets/search_widget.dart';
import 'package:entire/Widgets/small_categories.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class HomeScreen extends StatelessWidget {
  static String routeName = "HomeScreen";
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(
          create: (_) => ProductsProvider(),
        ),
        ChangeNotifierProvider(
          create: (_) => PromosProvider(),
        ),
      ],
      child: Scaffold(
        body: SingleChildScrollView(
          child: SafeArea(
              child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 30),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SearchWidget(),
                SizedBox(
                  height: 30,
                ),
                Promos(),
                SizedBox(
                  height: 35,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    Text(
                      "Categories",
                      style: Theme.of(context).textTheme.headline5,
                    ),
                    Text(
                      "See All",
                      style: TextStyle(
                          color: Colors.grey,
                          fontWeight: FontWeight.w500,
                          decoration: TextDecoration.underline),
                    )
                  ],
                ),
                SizedBox(
                  height: 10,
                ),
                Wrap(
                  runSpacing: 2,
                  spacing: 6,
                  children: [
                    SmallCategoriesWidget(),
                    SmallCategoriesWidget(),
                    SmallCategoriesWidget(),
                    SmallCategoriesWidget(),
                    SmallCategoriesWidget(),
                  ],
                ),
                SizedBox(
                  height: 30,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    Text(
                      "Products",
                      style: Theme.of(context).textTheme.headline5,
                    ),
                    Text(
                      "See All",
                      style: TextStyle(
                          color: Colors.grey,
                          fontWeight: FontWeight.w500,
                          decoration: TextDecoration.underline),
                    )
                  ],
                ),
                SizedBox(
                  height: 15,
                ),
                ProductsList(),
              ],
            ),
          )),
        ),
      ),
    );
  }
}

class ProductsList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var items = Provider.of<ProductsProvider>(context).items;
    return Container(
        height: 220,
        padding: const EdgeInsets.symmetric(vertical: 10),
        child: ListView.builder(
            scrollDirection: Axis.horizontal,
            itemCount: items.length,
            itemBuilder: (ctx, i) => ChangeNotifierProvider.value(
                  value: items[i],
                  child: ProductItem(),
                )));
  }
}
