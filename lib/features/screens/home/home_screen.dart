import 'package:flutter/material.dart';
import 'package:foodi/core/constants/colors.dart';
import 'package:foodi/features/screens/home/widgets/home_tabs/explore_tab.dart';
import 'package:foodi/features/screens/home/widgets/home_tabs/orders/orders_tab.dart';
import 'package:foodi/features/screens/profile/profile_page.dart';
import 'package:foodi/features/screens/support/support_page.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int currentIndex = 0;

  List<Widget> tabs = [ExploreTab(), OrdersTab(), SupportPage(), ProfilePage()];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: Container(
        decoration: BoxDecoration(
          boxShadow: [
            BoxShadow(
              color: Colors.grey.withOpacity(0.4),
              blurRadius: 12.0,
              offset: Offset(2, 2),
            ),
          ],
        ),
        child: ClipRRect(
          borderRadius: const BorderRadius.only(
            topRight: Radius.circular(24),
            topLeft: Radius.circular(24),
          ),
          child: BottomNavigationBar(
            selectedItemColor: const Color(secondaryColor),
            unselectedItemColor: Colors.grey,
            currentIndex: currentIndex,
            showUnselectedLabels: true,
            onTap: (value) => setState(() => currentIndex = value),
            items: const [
              BottomNavigationBarItem(
                icon: Icon(Icons.explore),
                label: "Explore",
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.shopping_bag),
                label: "Orders",
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.contact_support_outlined),
                label: "Support",
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.person),
                label: "Profile",
              ),
            ],
          ),
        ),
      ),
      body: tabs[currentIndex],
    );
  }
}
