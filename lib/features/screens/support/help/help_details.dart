import 'package:flutter/material.dart';

class FaqDetailPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        leading: CircleAvatar(
          backgroundColor: Color(0xFFFEEBE9),
          child: IconButton(
            icon: Icon(Icons.arrow_back, color: Colors.red),
            onPressed: () => Navigator.pop(context),
          ),
        ),
        title: Text("Support", style: TextStyle(color: Colors.black)),
        elevation: 0,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "What is Yumx",
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
                color: Colors.red,
              ),
            ),
            SizedBox(height: 8),
            Text(
              "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. "
              "Est ultricies integer quis auctor elit sed vulputate...",
              style: TextStyle(fontSize: 14),
            ),
            SizedBox(height: 24),
            Text(
              "Where is our location?",
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
                color: Colors.red,
              ),
            ),
            SizedBox(height: 8),
            Text(
              "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. "
              "Est ultricies integer quis auctor elit sed vulputate...",
              style: TextStyle(fontSize: 14),
            ),
          ],
        ),
      ),
    );
  }
}
