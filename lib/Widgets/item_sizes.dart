import 'package:flutter/material.dart';

List sizes = [3.5, 4, 4.5, 5, 5.5, 6];

class ItemSizes extends StatefulWidget {
  @override
  _ItemSizesState createState() => _ItemSizesState();
}

class _ItemSizesState extends State<ItemSizes> {
  int _selectedSizeIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Container(
        margin: const EdgeInsets.only(top: 10),
        height: 40,
        child: ListView(
          scrollDirection: Axis.horizontal,
          children:
              List.generate(6, (index) => _sizeCircle(index, sizes[index])),
        ));
  }

  Widget _sizeCircle(index, size) {
    return GestureDetector(
      onTap: () {
        setState(() {
          _selectedSizeIndex = index;
        });
      },
      child: AnimatedContainer(
        duration: Duration(milliseconds: 300),
        width: 33.0,
        height: 33.0,
        decoration: new BoxDecoration(
            shape: BoxShape.circle,
            border: index == _selectedSizeIndex
                ? Border.all(width: 0, color: Colors.transparent)
                : Border.all(color: Colors.grey),
            color: index == _selectedSizeIndex
                ? Theme.of(context).primaryColor
                : Colors.transparent),
        margin: const EdgeInsets.only(right: 12),
        alignment: Alignment.center,
        child: Text(
          size.toString(),
          style: TextStyle(
              fontWeight: FontWeight.w500,
              color: index == _selectedSizeIndex ? Colors.white : Colors.black),
        ),
      ),
    );
  }
}
