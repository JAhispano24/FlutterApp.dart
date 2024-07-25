import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';

class BestSellerWidget extends StatelessWidget {
  // List of items
  final List<Map<String, dynamic>> items = [
    {
      'image': 'images/b1.png',
      'title': "Fr'Croissant",
      'description': "Feeling French every bit of bite",
      'price': "\$2",
      'rating': 4.5, 
    },
    {
      'image': 'images/c6.png',
      'title': "Frappuccino",
      'description': "Be different, be flavorful",
      'price': "\$5",
      'rating': 3.5, 
    },
    {
      'image': 'images/c1.png',
      'title': "Heart'Cappuccino",
      'description': "Taste what love is like",
      'price': "\$6",
      'rating': 4.0, 
    },
    {
      'image': 'images/b2.png',
      'title': "Choc'Eclair",
      'description': "Sprinkles with chocolates and drizzles ",
      'price': "\$1",
      'rating': 4.2, 
    },
    {
      'image': 'images/c3.png',
      'title': "Gen.Black",
      'description': "Sip a pure punch, an aroma of darkness",
      'price': "\$2",
      'rating': 4.7, 
    },
    {
      'image': 'images/b4.png',
      'title': "Classic Baguette",
      'description': "I'll make you full in a couple of bite",
      'price': "\$1.25",
      'rating': 3.9, 
    },
  ];

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Padding(
        padding: EdgeInsets.symmetric(vertical: 10, horizontal: 20),
        child: Row(
          children: List.generate(
            items.length,
            (index) => Container(
              width: 200,
              height: 300,
              margin: EdgeInsets.only(right: 10),
              decoration: BoxDecoration(
                color: Colors.brown,
                borderRadius: BorderRadius.circular(5),
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey.withOpacity(0.5),
                    spreadRadius: 3,
                    blurRadius: 10,
                    offset: Offset(0, 3),
                  ),
                ],
              ),
              child: Padding(
                padding: EdgeInsets.all(10),
                
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Container(
                      width: 170,
                      height: 130,
                      child: Image.asset(
                        items[index]['image'],
                        fit: BoxFit.cover,
                      ),
                    ),
                    SizedBox(height: 8),
                    Text(
                      items[index]['title'],
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(height: 5),
                    Text(
                      items[index]['description'],
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 12,
                        fontWeight: FontWeight.normal,
                      ),
                    ),
                    SizedBox(height: 12),
                    Row(
                      
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          items[index]['price'],
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 17,
                            fontWeight: FontWeight.normal,
                          ),
                        ),
                        RatingBar.builder(
                          initialRating: items[index]['rating'],
                          minRating: 1,
                          direction: Axis.horizontal,
                          allowHalfRating: true,
                          itemCount: 5,
                          itemSize: 16,
                          itemBuilder: (context, _) => Icon(
                            Icons.star,
                            color: Colors.amber,
                          ),
                          onRatingUpdate: (rating) {
                            print(rating);
                          },
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}