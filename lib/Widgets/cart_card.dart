import 'package:entire/Widgets/item_count.dart';
import 'package:flutter/material.dart';

class CartCard extends StatelessWidget {
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
            Container(
              margin: const EdgeInsets.symmetric(vertical: 0, horizontal: 10),
              child: Image(
                image: NetworkImage(
                    "https://scontent.fqfd1-2.fna.fbcdn.net/v/t1.15752-9/241165311_836855787195783_961998019330795786_n.png?_nc_cat=107&ccb=1-5&_nc_sid=ae9488&_nc_ohc=jXUyPAd7hnUAX9zvCml&_nc_ht=scontent.fqfd1-2.fna&oh=b58b0ebb7d5771e79909c9e18c4a0247&oe=6153D037"),
              ),
            ),
            const SizedBox(
              width: 10,
            ),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Kllisre ram DDR4",
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
                      ItemCount(),
                      Text(
                        "\$39.32",
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
