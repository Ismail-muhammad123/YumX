import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:foodi/core/constants/colors.dart';

class ProfilePage extends StatefulWidget {
  const ProfilePage({super.key});

  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Row(
              children: [
                CircleAvatar(radius: 25, child: Placeholder()),
                Column(
                  children: [
                    Text(
                      "John Doe",
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Text(
                      "I love fast food",
                      style: TextStyle(color: Colors.grey),
                    ),
                  ],
                ),
              ],
            ),
            const SizedBox(height: 10),
            ListTile(
              tileColor: Color(lightSecondaryColor),
              leading: Icon(Icons.person_outline, color: Color(secondaryColor)),
              title: Text("Personal Info"),
            ),
            SizedBox(height: 5),
            ListTile(
              tileColor: Color(lightSecondaryColor),
              leading: Icon(Icons.map, color: Color(secondaryColor)),
              title: Text("Addresses"),
            ),
            SizedBox(height: 10),
            ListTile(
              tileColor: Color(lightSecondaryColor),
              leading: Icon(
                Icons.shopping_bag_outlined,
                color: Color(secondaryColor),
              ),
              title: Text("Cart"),
              trailing: Icon(
                Icons.keyboard_arrow_right,
                color: Color(secondaryColor),
                size: 20,
              ),
            ),
            const SizedBox(height: 5),
            ListTile(
              tileColor: Color(lightSecondaryColor),
              leading: Icon(
                FontAwesomeIcons.heart,
                color: Color(secondaryColor),
              ),
              title: Text("Favourite"),
              trailing: Icon(
                Icons.keyboard_arrow_right,
                color: Color(secondaryColor),
                size: 20,
              ),
            ),
            const SizedBox(height: 5),
            ListTile(
              tileColor: Color(lightSecondaryColor),
              leading: Icon(Icons.notifications, color: Color(secondaryColor)),
              title: Text("Notifications"),
              trailing: Icon(
                Icons.keyboard_arrow_right,
                color: Color(secondaryColor),
                size: 20,
              ),
            ),
            const SizedBox(height: 10),
            ListTile(
              tileColor: Color(lightSecondaryColor),
              leading: Icon(
                Icons.help_outline_rounded,
                color: Color(secondaryColor),
              ),
              title: Text("FAQs"),
              trailing: Icon(
                Icons.keyboard_arrow_right,
                color: Color(secondaryColor),
                size: 20,
              ),
            ),
            const SizedBox(height: 5),
            ListTile(
              tileColor: Color(lightSecondaryColor),
              leading: Icon(Icons.feedback, color: Color(secondaryColor)),
              title: Text("User Review"),
              trailing: Icon(
                Icons.keyboard_arrow_right,
                color: Color(secondaryColor),
                size: 20,
              ),
            ),
            const SizedBox(height: 12),
            ListTile(
              onTap: () async {
                bool? res = await showDialog(
                  context: context,
                  builder:
                      (context) => AlertDialog(
                        content: Column(
                          children: [
                            MaterialButton(
                              onPressed: () => Navigator.of(context).pop(true),
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(10),
                              ),
                              color: Color(secondaryColor),
                              minWidth: 300,
                              child: Text(
                                "Yes",
                                style: TextStyle(color: Color(primaryColor)),
                              ),
                            ),
                            SizedBox(height: 10),
                            MaterialButton(
                              onPressed: () => Navigator.of(context).pop(false),
                              shape: RoundedRectangleBorder(
                                side: BorderSide(color: Color(secondaryColor)),
                                borderRadius: BorderRadius.circular(10),
                              ),
                              color: Color(primaryColor),
                              minWidth: 300,
                              child: Text(
                                "No",
                                style: TextStyle(color: Color(secondaryColor)),
                              ),
                            ),
                          ],
                        ),
                      ),
                );
                if (res == true) {
                  // TODO: implement logout
                }
              },
              tileColor: Color(lightSecondaryColor),
              leading: Icon(Icons.logout, color: Colors.red),
              title: Text("Logout"),
              trailing: Icon(
                Icons.keyboard_arrow_right,
                color: Color(secondaryColor),
                size: 20,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
