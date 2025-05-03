import 'package:flutter/material.dart';
import 'package:foodi/core/constants/colors.dart';
import 'package:foodi/core/widgets/primary_button.dart';

class CardPaymentForm extends StatefulWidget {
  const CardPaymentForm({super.key});

  @override
  State<CardPaymentForm> createState() => CardPaymentFormState();
}

class CardPaymentFormState extends State<CardPaymentForm> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Card"), centerTitle: true, elevation: 0),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      floatingActionButton: PrimaryButton(
        label: "Confirm",
        onPressed: () {
          // TODO: implement confirm card payment button
        },
      ),
      body: Column(
        children: [
          Text("Card Holder Name"),
          TextFormField(
            decoration: InputDecoration(
              border: InputBorder.none,
              fillColor: Color(secondaryColor).withOpacity(0.2),
              contentPadding: EdgeInsets.all(8.0),
            ),
          ),
          const SizedBox(height: 12),
          Text("Card Number"),
          TextFormField(
            keyboardType: TextInputType.number,
            decoration: InputDecoration(
              border: InputBorder.none,
              fillColor: Color(secondaryColor).withOpacity(0.2),
              contentPadding: EdgeInsets.all(8.0),
            ),
          ),
          SizedBox(height: 12),
          Row(
            children: [
              Expanded(
                child: Column(
                  children: [
                    Text("Expiry Date"),
                    TextFormField(
                      keyboardType: TextInputType.datetime,
                      decoration: InputDecoration(
                        border: InputBorder.none,
                        fillColor: Color(secondaryColor).withOpacity(0.2),
                        contentPadding: EdgeInsets.all(8.0),
                      ),
                    ),
                  ],
                ),
              ),
              Expanded(
                child: Column(
                  children: [
                    Text("Card Holder Name"),
                    TextFormField(
                      decoration: InputDecoration(
                        border: InputBorder.none,
                        fillColor: Color(secondaryColor).withOpacity(0.2),
                        contentPadding: EdgeInsets.all(8.0),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
