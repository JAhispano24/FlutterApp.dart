import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

class NewOfferWidget extends StatelessWidget {
  // List of items
  final List<Map<String, dynamic>> items = [
    {
      'image': 'images/b1.png',
      'title': "Fr'Crossaint",
      'description': "Feeling french every bit of bite",
      'price': "\$2",
    },
    {
      'image': 'images/c4.png',
      'title': "Heart'Cappuccino",
      'description': "Taste what love is like",
      'price': "\$6",
    },
    {
      'image': 'images/b2.png',
      'title': "Choc'Eclair",
      'description': "Sprinkles with chocolates and drizzles",
      'price': "\$1",
    },
    {
      'image': 'images/c3.png',
      'title': "Gen.Black",
      'description': "Sip a pure punch, an aroma of darkness",
      'price': "\$4",
    },
    {
      'image': 'images/b4.png',
      'title': "Classic Baguette",
      'description': "I'll make you full in a couple of bite",
      'price': "\$1.25",
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 20, horizontal: 10),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: List.generate(
          items.length,
          (index) => Container(
            margin: EdgeInsets.only(bottom: 10),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(10),
              boxShadow: [
                BoxShadow(
                  color: Colors.grey.withOpacity(0.5),
                  spreadRadius: 3,
                  blurRadius: 10,
                  offset: Offset(0, 3),
                ),
              ],
            ),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: EdgeInsets.all(10),
                  child: InkWell(
                    onTap: () {
                      Navigator.pushNamed(context, "itemPage");
                    },
                    child: Container(
                      width: 120,
                      height: 90,
                      child: Image.asset(
                        items[index]['image'],
                        fit: BoxFit.contain,
                      ),
                    ),
                  ),
                ),
                Expanded(
                  child: Padding(
                    padding: EdgeInsets.symmetric(vertical: 10, horizontal: 10),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          items[index]['title'],
                          style: TextStyle(
                            color: Colors.brown,
                            fontSize: 22,
                            fontWeight: FontWeight.bold,
                          ),
                          maxLines: 1,
                          overflow: TextOverflow.ellipsis,
                        ),
                        SizedBox(height: 5),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              items[index]['price'],
                              style: TextStyle(
                                fontSize: 15,
                                color: Colors.red,
                                fontWeight: FontWeight.w200,
                              ),
                            ),
                            SizedBox(width: 5),
                            Expanded(
                              child: Text(
                                items[index]['description'],
                                style: TextStyle(
                                  fontSize: 10,
                                  fontWeight: FontWeight.normal,
                                ),
                                maxLines: 2,
                                overflow: TextOverflow.ellipsis,
                              ),
                            ),
                          ],
                        ),
                        SizedBox(height: 10),
                        Row(
                          children: [
                            Icon(
                              CupertinoIcons.heart,
                              color: Colors.red,
                              size: 26,
                            ),
                            SizedBox(width: 10),
                            Icon(
                              CupertinoIcons.cart,
                              color: Colors.red,
                              size: 26,
                            ),
                          ],
                        ),
                        SizedBox(height: 10), // Adjusted vertical space
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}