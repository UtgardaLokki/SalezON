import 'package:flutter/material.dart';

class FirstCouponScreen extends StatelessWidget {
  static String routeName = "/first_coupon";

  const FirstCouponScreen({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Profile"),
      ),
      body: const SingleChildScrollView(
        padding: EdgeInsets.symmetric(vertical: 20),
        child: Column(
          children: [
            Image(image: AssetImage('assets/images/Coupon added.png')),
            SizedBox(height: 20),
          ],
        ),
      ),
    );
  }
}
