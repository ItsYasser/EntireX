import 'package:flutter/material.dart';

class ProductItem extends StatelessWidget {
  const ProductItem({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
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
              Container(
                padding: const EdgeInsets.symmetric(vertical: 1, horizontal: 5),
                decoration: BoxDecoration(
                    border: Border.all(
                        width: 1.2, color: Theme.of(context).primaryColor),
                    borderRadius: BorderRadius.circular(20)),
                child: Text(
                  "10% Off",
                  style: TextStyle(
                      fontSize: 13,
                      fontWeight: FontWeight.bold,
                      color: Theme.of(context).primaryColor),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(right: 5),
                child: Icon(
                  Icons.favorite_border,
                  size: 20,
                  color: Theme.of(context).primaryColor,
                ),
              ),
            ],
          ),
          Expanded(
              child: Container(
            decoration: BoxDecoration(
                image: DecorationImage(
              fit: BoxFit.fill,
              image: NetworkImage(
                  "https://www.kicksologists.com/wp-content/uploads/2010/03/Air-Jordan-10.jpg"),
            )),
          )),
          Text(
            "Jordan 3 Retros",
            overflow: TextOverflow.ellipsis,
            style: TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.w400,
            ),
          ),
          Text(
            "\$234.00",
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
        ],
      ),
    );
  }
}
