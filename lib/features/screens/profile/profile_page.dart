import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:foodi/core/constants/colors.dart';
import 'package:foodi/features/screens/authentication/login_screen.dart';
import 'package:foodi/features/screens/home/widgets/home_tabs/orders/sub_tabs/cart.dart';
import 'package:foodi/features/screens/profile/address_page.dart';
import 'package:foodi/features/screens/profile/favourites.dart';
import 'package:foodi/features/screens/profile/notifications.dart';
import 'package:foodi/features/screens/profile/personal_info_page.dart';
import 'package:foodi/features/screens/profile/user_review_form_page.dart';
import 'package:foodi/features/screens/support/help/help_topics.dart';

class ProfilePage extends StatefulWidget {
  const ProfilePage({super.key});

  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(28.0),
              child: Row(
                children: [
                  Container(
                    height: 100,
                    width: 100,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      image: DecorationImage(
                        fit: BoxFit.cover,
                        image: AssetImage("assets/images/banner.png"),
                      ),
                    ),
                  ),
                  SizedBox(width: 30),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "John Doe",
                        style: TextStyle(
                          fontSize: 22,
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
            ),
            const SizedBox(height: 10),
            Expanded(
              child: Padding(
                padding: const EdgeInsets.symmetric(
                  vertical: 8.0,
                  horizontal: 20.0,
                ),
                child: ListView(
                  children: [
                    ListTile(
                      onTap:
                          () => Navigator.of(context).push(
                            MaterialPageRoute(
                              builder: (context) => PersonalInfoPage(),
                            ),
                          ),
                      tileColor: Color(lightSecondaryColor),
                      leading: Icon(
                        Icons.person_outline,
                        color: Color(secondaryColor),
                      ),
                      title: Text("Personal Info"),
                    ),
                    SizedBox(height: 5),
                    ListTile(
                      onTap:
                          () => Navigator.of(context).push(
                            MaterialPageRoute(
                              builder: (context) => AddressPage(),
                            ),
                          ),
                      tileColor: Color(lightSecondaryColor),
                      leading: Icon(Icons.map, color: Color(secondaryColor)),
                      title: Text("Addresses"),
                    ),
                    SizedBox(height: 30),
                    // ListTile(
                    //   onTap:
                    //       () => Navigator.of(context).push(
                    //         MaterialPageRoute(builder: (context) => CartTab()),
                    //       ),
                    //   tileColor: Color(lightSecondaryColor),
                    //   leading: Icon(
                    //     Icons.shopping_bag_outlined,
                    //     color: Color(secondaryColor),
                    //   ),
                    //   title: Text("Cart"),
                    //   trailing: Icon(
                    //     Icons.keyboard_arrow_right,
                    //     color: Color(secondaryColor),
                    //     size: 20,
                    //   ),
                    // ),
                    // const SizedBox(height: 5),
                    ListTile(
                      onTap:
                          () => Navigator.of(context).push(
                            MaterialPageRoute(
                              builder: (context) => FavouritesPage(),
                            ),
                          ),
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
                      onTap:
                          () => Navigator.of(context).push(
                            MaterialPageRoute(
                              builder: (context) => NotificationsPage(),
                            ),
                          ),
                      tileColor: Color(lightSecondaryColor),
                      leading: Icon(
                        Icons.notifications,
                        color: Color(secondaryColor),
                      ),
                      title: Text("Notifications"),
                      trailing: Icon(
                        Icons.keyboard_arrow_right,
                        color: Color(secondaryColor),
                        size: 20,
                      ),
                    ),
                    SizedBox(height: 30),
                    ListTile(
                      onTap:
                          () => Navigator.of(context).push(
                            MaterialPageRoute(
                              builder: (context) => SupportFaqPage(),
                            ),
                          ),
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
                      onTap:
                          () => Navigator.of(context).push(
                            MaterialPageRoute(
                              builder: (context) => UserReviewFormPage(),
                            ),
                          ),
                      tileColor: Color(lightSecondaryColor),
                      leading: Icon(
                        Icons.feedback,
                        color: Color(secondaryColor),
                      ),
                      title: Text("User Review"),
                      trailing: Icon(
                        Icons.keyboard_arrow_right,
                        color: Color(secondaryColor),
                        size: 20,
                      ),
                    ),
                    SizedBox(height: 30),
                    ListTile(
                      onTap: () async {
                        bool? res = await showDialog(
                          context: context,
                          builder:
                              (context) => AlertDialog(
                                backgroundColor: Color(primaryColor),
                                content: SizedBox(
                                  child: Column(
                                    mainAxisSize: MainAxisSize.min,
                                    children: [
                                      Text("Are you sure you want to logout?"),
                                      SizedBox(height: 20),
                                      MaterialButton(
                                        onPressed:
                                            () =>
                                                Navigator.of(context).pop(true),
                                        shape: RoundedRectangleBorder(
                                          borderRadius: BorderRadius.circular(
                                            10,
                                          ),
                                        ),
                                        color: Color(secondaryColor),
                                        minWidth: 300,
                                        child: Text(
                                          "Yes",
                                          style: TextStyle(
                                            color: Color(primaryColor),
                                          ),
                                        ),
                                      ),
                                      SizedBox(height: 10),
                                      MaterialButton(
                                        onPressed:
                                            () => Navigator.of(
                                              context,
                                            ).pop(false),
                                        shape: RoundedRectangleBorder(
                                          side: BorderSide(
                                            color: Color(secondaryColor),
                                          ),
                                          borderRadius: BorderRadius.circular(
                                            10,
                                          ),
                                        ),
                                        color: Color(primaryColor),
                                        minWidth: 300,
                                        child: Text(
                                          "No",
                                          style: TextStyle(
                                            color: Color(secondaryColor),
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                        );
                        if (res == true) {
                          // TODO: implement logout
                          Navigator.of(context).pushReplacement(
                            MaterialPageRoute(
                              builder: (context) => LoginScreen(),
                            ),
                          );
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
            ),
          ],
        ),
      ),
    );
  }
}
