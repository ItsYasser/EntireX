import 'package:entire/Providers/promos_provider.dart';
import 'package:entire/Widgets/promo_card.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class Promos extends StatefulWidget {
  @override
  _PromosState createState() => _PromosState();
}

class _PromosState extends State<Promos> {
  int currentPage = 0;
  @override
  Widget build(BuildContext context) {
    var promos = Provider.of<PromosProvider>(context).promos;
    return SizedBox(
      height: 170,
      child: Column(
        children: [
          Expanded(
            child: PageView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: promos.length,
              itemBuilder: (ctx, i) => PromoCard(promos[i].picture),
              onPageChanged: (index) {
                setState(() {
                  currentPage = index;
                });
              },
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: List.generate(
              promos.length,
              (index) => buildDot(index: index),
            ),
          ),
        ],
      ),
    );
  }

  AnimatedContainer buildDot({required int index}) {
    return AnimatedContainer(
      duration: Duration(milliseconds: 700),
      margin: EdgeInsets.only(right: 5),
      height: 6,
      width: currentPage == index ? 20 : 6,
      decoration: BoxDecoration(
        color: currentPage == index
            ? Theme.of(context).primaryColor
            : Colors.transparent,
        borderRadius: BorderRadius.circular(3),
        border: currentPage == index
            ? Border.all(color: Colors.transparent)
            : Border.all(color: Colors.grey),
      ),
    );
  }
}
