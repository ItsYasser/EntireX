import 'package:flutter/material.dart';

class ItemCount extends StatefulWidget {
  const ItemCount({
    Key? key,
  }) : super(key: key);

  @override
  _ItemCountState createState() => _ItemCountState();
}

class _ItemCountState extends State<ItemCount> {
  int value = 1;
  void increase() {
    setState(() {
      value += 1;
    });
  }

  void decrease() {
    if (value == 1) return;
    setState(() {
      value -= 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        CircleButton(
          icon: Icons.remove,
          fun: decrease,
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 7),
          child: Text(
            value.toString(),
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
          ),
        ),
        CircleButton(
          icon: Icons.add,
          backGroundColor: Theme.of(context).primaryColor,
          iconColor: Colors.white,
          fun: increase,
        ),
      ],
    );
  }
}

class CircleButton extends StatelessWidget {
  final Color iconColor;
  final IconData icon;
  final Color backGroundColor;
  final VoidCallback fun;
  CircleButton(
      {required this.icon,
      required this.fun,
      this.iconColor = Colors.black,
      this.backGroundColor = Colors.black12});
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: fun,
      child: Container(
        padding: EdgeInsets.all(4),
        decoration:
            BoxDecoration(shape: BoxShape.circle, color: backGroundColor),
        child: Icon(
          icon,
          size: 20,
          color: iconColor,
        ),
      ),
    );
  }
}
