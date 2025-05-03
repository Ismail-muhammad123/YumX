import 'package:flutter/material.dart';
import 'package:foodi/core/constants/colors.dart';
import 'package:foodi/features/screens/home/widgets/home_tabs/explore_tab.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    // final authService = sl<AuthService>();
    final searchController = TextEditingController();

    int currentIndex = 0;

    List<Widget> _tabs = [ExploreTab(searchController: searchController)];

    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        selectedItemColor: const Color(secondaryColor),
        unselectedItemColor: Colors.grey,
        currentIndex: currentIndex,
        showUnselectedLabels: true,
        onTap: (value) => setState(() => currentIndex = value),
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.explore), label: "Explore"),
          BottomNavigationBarItem(
            icon: Icon(Icons.shopping_bag),
            label: "Orders",
          ),
          // BottomNavigationBarItem(
          //   icon: Icon(Icons.list_alt_rounded),
          //   label: "History",
          // ),
          BottomNavigationBarItem(icon: Icon(Icons.person), label: "Profile"),
        ],
      ),
      body: _tabs[currentIndex],
    );
  }
}
