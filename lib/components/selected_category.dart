import 'package:chitchat/utilities/const.dart';
import 'package:flutter/material.dart';

class CategorySelected extends StatefulWidget {
  @override
  _CategorySelectedState createState() => _CategorySelectedState();
}

class _CategorySelectedState extends State<CategorySelected> {
  int selectedIndex = 0;
  final List<String> categories = ['Messages', 'Online', 'Groups', 'Requests'];

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 90,
      color: Theme.of(context).primaryColor,
      child: ListView.builder(
        itemCount: categories.length,
        scrollDirection: Axis.horizontal,
        itemBuilder: (BuildContext context, int index) {
          return GestureDetector(
            onTap: (){
             setState(() {
               selectedIndex = index;
             });
            },
            child: Padding(
              padding: const EdgeInsets.symmetric(vertical: 30, horizontal: 20),
              child: Text(
                categories[index],
                style: index == selectedIndex ? kCategoryTextStyleActive: kCategoryTextStyleInactive,
              ),
            ),
          );
        },
      ),
    );
  }
}
