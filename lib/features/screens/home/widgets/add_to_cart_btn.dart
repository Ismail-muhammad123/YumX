import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:foodi/core/constants/colors.dart';

class AddToCartButton extends StatelessWidget {
  final Function() onTap;
  const AddToCartButton({super.key, required this.onTap});

  @override
  Widget build(BuildContext context) {
    return MaterialButton(
      color: Color(primaryColor),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(25)),
      onPressed: onTap,
      child: Row(
        children: [
          Icon(
            FontAwesomeIcons.bagShopping,
            color: Color(secondaryColor),
            size: 20,
          ),
          Text("Add to Cart"),
        ],
      ),
    );
  }
}
