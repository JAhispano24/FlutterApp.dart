import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class DrawerWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Container(
        color: Color(0xFFD7CE9),
        child: ListView(
          padding: EdgeInsets.only(top: 50),
          children: <Widget>[
            DrawerHeader(
              decoration: BoxDecoration(
                color: Colors.brown,
              ),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Container(
                    width: 50.0,
                    height: 50.0,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: Colors.brown,
                    ),
                    child: CircleAvatar(
                      backgroundImage: AssetImage("images/pfp.jpg"),
                    ),
                  ),
                  SizedBox(width: 10),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "JA-CHA-KARL-RUSS",
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                        ),
                      ),
                      SizedBox(height: 5),
                      Text(
                        "ja-cha-karl-russ@gmail.com",
                        style: TextStyle(
                          fontSize: 12,
                          fontWeight: FontWeight.normal,
                          fontStyle: FontStyle.italic,
                          color: Colors.white,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            ListTile(
              leading: Icon(
                CupertinoIcons.home,
                color: Colors.brown,
              ),
              title: Text(
                "Home",
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.w300,
                ),
              ),
              onTap: () {
                Navigator.pushNamed(context, "/homePage");
              },
            ),
            ListTile(
              leading: Icon(
                Icons.account_circle,
                color: Colors.brown,
              ),
              title: Text(
                "My Account",
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.w300,
                ),
              ),
              onTap: () {},
            ),
            ListTile(
              leading: Icon(
                Icons.shopping_cart,
                color: Colors.brown,
              ),
              title: Text(
                "Orders",
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.w300,
                ),
              ),
              onTap: () {
                Navigator.pushNamed(context, "cartPage");
              },
            ),
            ListTile(
              leading: Icon(
                Icons.settings,
                color: Colors.brown,
              ),
              title: Text(
                "Settings",
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.w300,
                ),
              ),
              onTap: () {},
            ),
            ListTile(
              leading: Icon(
                Icons.feedback,
                color: Colors.brown,
              ),
              title: Text(
                "Write a feedback",
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.w300,
                ),
              ),
              onTap: () {
                Navigator.pushNamed(context, "feedbackPage");
              },
            ),
            ListTile(
              leading: Icon(
                Icons.logout,
                color: Colors.brown,
              ),
              title: Text(
                "Log out",
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.w300,
                ),
              ),
              onTap:  () {
                Navigator.pushNamed(context, "getstartedPage");
              },
            ),
          ],
        ),
      ),
    );
  }
}