import "package:flutter/material.dart";
import "package:font_awesome_flutter/font_awesome_flutter.dart";
import "package:foodi/core/constants/colors.dart";

class SelectPaymentOptions extends StatelessWidget {
  const SelectPaymentOptions({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          onPressed: () => Navigator.of(context).pop(),
          icon: Icon(Icons.arrow_back_ios),
          color: Color(primaryColor),
          iconSize: 15,
        ),
        centerTitle: true,
        elevation: 0,
        title: Text("Select Payment Method"),
      ),
      body: Column(
        children: [
          Row(
            children: [
              CircleAvatar(
                radius: 20,
                child: Icon(FontAwesomeIcons.buildingColumns),
              ),
              Text("Bank Transfer"),
              Spacer(),
              Container(
                height: 20,
                width: 20,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  border: Border.all(color: Color(secondaryColor)),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
