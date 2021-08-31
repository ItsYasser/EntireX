import 'package:entire/Widgets/offers_widget.dart';
import 'package:entire/Widgets/product_item.dart';
import 'package:entire/Widgets/search_widget.dart';
import 'package:entire/Widgets/small_categories.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  static String routeName = "HomeScreen";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: SafeArea(
            child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 30),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SearchWidget(),
              SizedBox(
                height: 35,
              ),
              Offers(),
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
              Container(
                  height: 220,
                  padding: const EdgeInsets.symmetric(vertical: 10),
                  child: ListView.builder(
                      scrollDirection: Axis.horizontal,
                      itemCount: 5,
                      itemBuilder: (ctx, i) => ProductItem())),
            ],
          ),
        )),
      ),
    );
  }
}
