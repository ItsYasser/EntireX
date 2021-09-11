import 'package:entire/Widgets/circle_button.dart';
import 'package:entire/Widgets/custom_text.dart';
import 'package:flutter/material.dart';

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
        CustomText(
          text: widget.counter.value.toString(),
          fontSize: 16,
          fontWeight: FontWeight.bold,
          padding: const EdgeInsets.symmetric(horizontal: 7),
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
