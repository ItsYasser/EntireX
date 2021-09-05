import 'package:flutter/material.dart';

List colors = [Colors.red, Colors.blue, Colors.green, Colors.black];

class ItemColors extends StatefulWidget {
  @override
  _ItemColorsState createState() => _ItemColorsState();
}

class _ItemColorsState extends State<ItemColors> {
  int _selectedSizeIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Container(
        margin: const EdgeInsets.only(top: 10),
        height: 30,
        child: ListView(
          scrollDirection: Axis.horizontal,
          children: List.generate(
              colors.length, (index) => _colorCircle(index, colors[index])),
        ));
  }

  Widget _colorCircle(index, Color color) {
    return GestureDetector(
      onTap: () {
        setState(() {
          _selectedSizeIndex = index;
        });
      },
      child: AnimatedContainer(
        duration: Duration(milliseconds: 300),
        width: _selectedSizeIndex == index ? 28.0 : 26,
        height: _selectedSizeIndex == index ? 28.0 : 26,
        decoration: BoxDecoration(
            shape: BoxShape.circle,
            border: Border.all(
                color:
                    _selectedSizeIndex == index ? color : Colors.grey.shade300,
                width: 2),
            color: Colors.white),
        margin: const EdgeInsets.only(right: 12),
        padding: const EdgeInsets.all(3),
        alignment: Alignment.center,
        child: Container(
          decoration: BoxDecoration(color: color, shape: BoxShape.circle),
        ),
      ),
    );
  }
}
