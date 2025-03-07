import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class AppBarWidget extends StatelessWidget {
  @override
  
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(
        vertical: 15,
        horizontal: 15,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          InkWell(
            onTap: () {
              Scaffold.of(context).openDrawer();
            },
            child: Container(
              padding: EdgeInsets.all(8),
              decoration: BoxDecoration(
                color: Colors.brown,
                borderRadius: BorderRadius.circular(5),
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey.withOpacity(0.5),
                    spreadRadius: 2,
                    blurRadius: 10,
                    offset: Offset(0, 3),
                  ),
                ],
              ),
              child: Icon(
                CupertinoIcons.bars,
                color: Colors.white, 
              ),
            ),
          ),
          InkWell(
            onTap: () {},
            child: Container(
              child: Icon(Icons.notifications),
            ),
          ),
        ],
      ),
    );
  }
}