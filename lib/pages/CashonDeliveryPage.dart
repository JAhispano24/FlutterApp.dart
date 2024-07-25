import 'package:flutter/material.dart';

class CashOnDeliveryPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Cash on Delivery"),
      ),
      body: Center(
        child: Padding(
          padding: EdgeInsets.all(20.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              SizedBox(height: 30.0),
              ElevatedButton(
                onPressed: () {
                  showDialog(
                    context: context,
                    builder: (BuildContext context) {
                      return AlertDialog(
                        title: Text("Confirm Cash on Delivery?"),
                        content: Column(
                          mainAxisSize: MainAxisSize.min,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Text("Please confirm your order before proceeding."),
                            SizedBox(height: 10.0),
                            Text("You will pay cash upon delivery."),
                          ],
                        ),
                        actions: <Widget>[
                          TextButton(
                            child: Text("Cancel"),
                            onPressed: () {
                              Navigator.of(context).pop();
                            },
                          ),
                          ElevatedButton(
                            child: Text("Confirm"),
                            onPressed: () {
                              Navigator.of(context).pop(); 
                              _showSuccessDialog(context);
                            },
                          ),
                        ],
                      );
                    },
                  );
                },
                style: ElevatedButton.styleFrom(
                  padding: EdgeInsets.symmetric(vertical: 15.0, horizontal: 30.0),
                  backgroundColor: Colors.green,
                ),
                child: Text(
                  "Confirm Cash on Delivery",
                  style: TextStyle(color: Colors.white),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  void _showSuccessDialog(BuildContext context) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text("Success"),
          content: Text("Your cash on delivery order has been confirmed."),
          actions: <Widget>[
            ElevatedButton(
              child: Text("OK"),
               onPressed: () {
                Navigator.pushNamed(context, "/homePage");
              },
            ),
          ],
        );
      },
    );
  }
}