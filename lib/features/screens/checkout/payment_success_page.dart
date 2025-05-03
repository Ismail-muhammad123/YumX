import 'package:flutter/material.dart';
import 'package:foodi/core/constants/colors.dart';

class PaymentSuccessPage extends StatefulWidget {
  const PaymentSuccessPage({super.key});

  @override
  State<PaymentSuccessPage> createState() => _PaymentSuccessPageState();
}

class _PaymentSuccessPageState extends State<PaymentSuccessPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(secondaryColor),
      body: Center(
        child: Container(
          height: 300,
          width: 300,
          decoration: BoxDecoration(
            color: Color(secondaryColor).withOpacity(0.3),
            borderRadius: BorderRadius.circular(150),
          ),
          alignment: Alignment.center,
          child: Container(
            height: 250,
            width: 250,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(125),
            ),
            alignment: Alignment.center,
            child: Center(
              child: Icon(
                Icons.check_circle,
                color: Color(secondaryColor),
                size: 100,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
