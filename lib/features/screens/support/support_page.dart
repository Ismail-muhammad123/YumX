import 'package:flutter/material.dart';
import 'package:foodi/core/constants/colors.dart';

class SupportPage extends StatefulWidget {
  const SupportPage({super.key});

  @override
  State<SupportPage> createState() => _SupportPageState();
}

class _SupportPageState extends State<SupportPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Text(
            "Support",
            style: TextStyle(
              fontWeight: FontWeight.w600,
              fontSize: 22,
              color: Color(secondaryColor),
              fontFamily: "Poppins",
            ),
          ),
          SizedBox(height: 20),
          ListTile(
            leading: CircleAvatar(
              backgroundColor: Color(secondaryColor).withOpacity(0.3),
              child: Icon(Icons.send_rounded, color: Color(secondaryColor)),
            ),
            title: Text("Message Us"),
            trailing: Icon(Icons.keyboard_arrow_right),
          ),
          SizedBox(height: 10),
          ListTile(
            leading: CircleAvatar(
              backgroundColor: Color(secondaryColor).withOpacity(0.3),
              child: Icon(
                Icons.live_help_outlined,
                color: Color(secondaryColor),
              ),
            ),
            title: Text("Help"),
            trailing: Icon(Icons.keyboard_arrow_right),
          ),
        ],
      ),
    );
  }
}
