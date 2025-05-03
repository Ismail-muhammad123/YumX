import 'package:flutter/material.dart';
import 'package:foodi/core/constants/colors.dart';
import 'package:foodi/core/widgets/primary_button.dart';

class CheckoutPage extends StatefulWidget {
  const CheckoutPage({super.key});

  @override
  State<CheckoutPage> createState() => _CheckoutPageState();
}

class _CheckoutPageState extends State<CheckoutPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(elevation: 0, title: Text("Checkout"), centerTitle: true),
      floatingActionButton: PrimaryButton(
        label: "Make Payment",
        onPressed: () {
          // TODO implement making payment function
        },
      ),
      body: ListView.builder(
        itemBuilder: (context, index) {
          return Row(
            children: [
              Container(
                height: 50,
                width: 60,
                decoration: BoxDecoration(
                  color: Colors.grey,
                  borderRadius: BorderRadius.circular(10),
                ),
              ),
              Column(
                children: [
                  Row(
                    children: [
                      Text(
                        "Pizza Pizza Pizza",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Color(secondaryColor),
                        ),
                      ),
                      Icon(Icons.cancel, color: Color(secondaryColor)),
                    ],
                  ),
                  Text("\$20", style: TextStyle(fontWeight: FontWeight.bold)),
                  Row(
                    children: [
                      Text("14", style: TextStyle(color: Colors.grey)),
                      Spacer(),
                      Icon(Icons.remove_circle),
                      Text("2"),
                      Icon(Icons.add_circle),
                    ],
                  ),
                ],
              ),
            ],
          );
        },
      ),
    );
  }
}
