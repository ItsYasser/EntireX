import 'package:flutter/material.dart';

class SearchWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          flex: 8,
          child: Container(
            margin: const EdgeInsets.only(right: 20),
            padding: const EdgeInsets.only(left: 10),
            height: 45,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(7),
              color: Colors.white,
            ),
            child: Row(
              children: [
                Icon(Icons.search),
                SizedBox(
                  width: 10,
                ),
                Text("Search here..."),
              ],
            ),
          ),
        ),
        Expanded(
          child: Container(
            height: 45,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(7),
              color: Colors.white,
            ),
            child: Icon(
              Icons.filter_list,
              color: Theme.of(context).primaryColor,
            ),
          ),
        )
      ],
    );
  }
}
