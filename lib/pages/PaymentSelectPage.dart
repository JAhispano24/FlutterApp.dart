import 'package:flutter/material.dart';
import 'package:food_ordering/pages/CashonDeliveryPage.dart';
import 'package:food_ordering/pages/OnlinePayment.dart';


class PaymentSelectPage extends StatefulWidget {
  @override
  _PaymentSelectionScreenState createState() => _PaymentSelectionScreenState();
}

class _PaymentSelectionScreenState extends State<PaymentSelectPage> {
  String paymentMethod = 'Cash on Delivery';

  void navigateToPaymentPage(BuildContext context) {
    if (paymentMethod == 'Cash on Delivery') {
      Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => CashOnDeliveryPage()),
      );
    } else {
      Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => OnlinePaymentPage()),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(60.0),
        child: AppBar(
          backgroundColor: Colors.white,
          title: Text(
            'Select Payment Method',
            style: TextStyle(color: Colors.brown),
          ),
          leading: IconButton(
            icon: Icon(Icons.arrow_back),
            onPressed: () {
              Navigator.of(context).pop();
            },
          ),
        ),
      ),
      backgroundColor: Colors.white,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            SizedBox(
              width: 300.0,
              child: ListTile(
                title: Text('Cash on Delivery'),
                leading: Radio(
                  value: 'Cash on Delivery',
                  groupValue: paymentMethod,
                  onChanged: (value) {
                    setState(() {
                      paymentMethod = value as String;
                    });
                  },
                ),
                onTap: () {
                  setState(() {
                    paymentMethod = 'Cash on Delivery';
                  });
                },
              ),
            ),
            SizedBox(
              width: 300.0,
              child: ListTile(
                title: Text('Online Payment'),
                leading: Radio(
                  value: 'Online Payment',
                  groupValue: paymentMethod,
                  onChanged: (value) {
                    setState(() {
                      paymentMethod = value as String;
                    });
                  },
                ),
                onTap: () {
                  setState(() {
                    paymentMethod = 'Online Payment';
                  });
                },
              ),
            ),
            SizedBox(height: 20.0),
            ElevatedButton(
              onPressed: () {
                // Navigate to Cash on Delivery or Online Payment page
                navigateToPaymentPage(context);
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.green,
              ),
              child: Text(
                'Proceed',
                style: TextStyle(color: Colors.white),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

void main() {
  runApp(MaterialApp(
    home: PaymentSelectPage(),
  ));
}