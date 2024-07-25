import 'package:flutter/material.dart';

class CategoriesWidget extends StatelessWidget {
  // list of image paths
  final List<String> imagePaths = [
    "images/b1.png",
    "images/c1.png",
    "images/b2.png",
    "images/c2.png",
    "images/b3.png",
    "images/c3.png",
    "images/b4.png",
    "images/c4.png",
    "images/b5.png",
    "images/c5.png",
    "images/b6.png",
    "images/c6.png",
  ];

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 10),
        child: Row(
          children: List.generate(imagePaths.length, (index) {
            return Padding(
              padding: EdgeInsets.symmetric(horizontal: 10),
              child: _buildCategoryItem(imagePaths[index]),
            );
          }),
        ),
      ),
    );
  }

  Widget _buildCategoryItem(String imagePath) {
    return Container(
      padding: EdgeInsets.all(10),
      child: Image.asset(
        imagePath,
        width: 65,
        height: 65,
      ),
    );
  }
}