import 'package:flutter/material.dart';

class OnlinePaymentPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Online Payment"),
      ),
      body: Center(
        child: SizedBox(
          width: 300.0,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              SizedBox(height: 20.0),
              PaymentOptionButton(
                icon: Icons.account_balance,
                label: 'Bank Transfer',
                onPressed: () => _navigateToSuccess(context, 'Bank Transfer'),
              ),
              SizedBox(height: 10.0),
              PaymentOptionButton(
                icon: Icons.phone_android,
                label: 'GCash',
                onPressed: () => _navigateToSuccess(context, 'GCash'),
              ),
              SizedBox(height: 10.0),
              PaymentOptionButton(
                icon: Icons.payment,
                label: 'PayMaya',
                onPressed: () => _navigateToSuccess(context, 'PayMaya'),
              ),
            ],
          ),
        ),
      ),
    );
  }

  void _navigateToSuccess(BuildContext context, String paymentMethod) {
    // Replace with your actual navigation logic
    // For demo purposes, navigate to a success page or perform an action
    Navigator.of(context).pushNamed('/success'); // Example navigation to '/success' route
  }
}

class PaymentOptionButton extends StatelessWidget {
  final IconData icon;
  final String label;
  final VoidCallback onPressed;

  const PaymentOptionButton({
    required this.icon,
    required this.label,
    required this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: ElevatedButton.icon(
        onPressed: onPressed,
        icon: Icon(icon),
        label: Text(label),
        style: ElevatedButton.styleFrom(
          foregroundColor: Colors.white,
          backgroundColor: Colors.blue,
          padding: EdgeInsets.symmetric(vertical: 16.0, horizontal: 24.0),
        ),
      ),
    );
  }
}