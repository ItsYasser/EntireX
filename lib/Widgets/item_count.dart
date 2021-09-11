import 'package:entire/Providers/cart_provider.dart';
import 'package:entire/Widgets/circle_button.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class ItemCount extends StatefulWidget {
  final ValueNotifier<int> counter;
  ItemCount({required this.counter});

  @override
  _ItemCountState createState() => _ItemCountState();
}

class _ItemCountState extends State<ItemCount> {
  void increaseValue() {
    setState(() {
      widget.counter.value += 1;
    });
  }

  void decreaseValue() {
    if (widget.counter.value == 1) return;
    setState(() {
      widget.counter.value -= 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        GestureDetector(
          onTap: () {
            decreaseValue();
          },
          child: CircleButton(
            icon: Icons.remove,
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 7),
          child: Text(
            widget.counter.value.toString(),
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
          ),
        ),
        GestureDetector(
          onTap: () {
            increaseValue();
          },
          child: CircleButton(
            icon: Icons.add,
            backGroundColor: Theme.of(context).primaryColor,
            iconColor: Colors.white,
          ),
        ),
      ],
    );
  }
}
