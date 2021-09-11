import 'package:entire/Widgets/custom_text.dart';
import 'package:flutter/material.dart';

class ProductDetailedImage extends StatelessWidget {
  final String image, title, id;
  final double price;

  const ProductDetailedImage(
      {required this.id,
      required this.image,
      required this.price,
      required this.title});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 300,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(30),
      ),
      padding: EdgeInsets.fromLTRB(15, 10, 15, 10),
      child: Column(
        children: [
          Expanded(
            child: Hero(
              tag: id,
              child: Image(
                image: NetworkImage(
                  image,
                ),
                fit: BoxFit.fill,
              ),
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Expanded(
                child: CustomText(
                  text: title,
                  fontSize: 22,
                  fontWeight: FontWeight.w500,
                ),
              ),
              SizedBox(
                width: 15,
              ),
              CustomText(
                text: "\$$price",
                fontSize: 22,
                fontWeight: FontWeight.w700,
                color: Theme.of(context).primaryColor,
              ),
            ],
          )
        ],
      ),
    );
  }
}
