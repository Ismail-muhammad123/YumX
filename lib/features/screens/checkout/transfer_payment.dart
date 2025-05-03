import 'package:flutter/material.dart';
import 'package:foodi/core/constants/colors.dart';
import 'package:foodi/core/widgets/primary_button.dart';

class TransferPaymentPage extends StatefulWidget {
  const TransferPaymentPage({super.key});

  @override
  State<TransferPaymentPage> createState() => _TransferPaymentPageState();
}

class _TransferPaymentPageState extends State<TransferPaymentPage> {
  final TextStyle keyStyle = TextStyle(color: Colors.grey, fontSize: 14);
  final TextStyle valueStyle = TextStyle(color: Color(secondaryColor));

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(centerTitle: true, elevation: 0, title: Text("Transfer")),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      floatingActionButton: PrimaryButton(
        label: "Click here after payment",
        onPressed: () {
          // TODO implement transfter payment processing function
        },
      ),
      body: Column(
        children: [
          Text("Bank Name", style: keyStyle),
          Text("YumX", style: valueStyle),
          SizedBox(height: 10),
          Text("Account Number", style: keyStyle),
          Text("2345678906", style: valueStyle),
          SizedBox(height: 10),
          Text("Bank Name", style: keyStyle),
          Text("Access Bank", style: valueStyle),
          SizedBox(height: 20),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [Text("\$34", style: valueStyle)],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [Text("TOTAL", style: keyStyle)],
          ),
        ],
      ),
    );
  }
}
