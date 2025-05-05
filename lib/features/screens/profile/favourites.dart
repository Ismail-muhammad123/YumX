import 'package:flutter/material.dart';
import 'package:foodi/core/constants/colors.dart';
import 'package:foodi/features/screens/home/widgets/chef/chef_list_tile_widget.dart';

class FavouritesPage extends StatefulWidget {
  const FavouritesPage({super.key});

  @override
  State<FavouritesPage> createState() => _FavouritesPageState();
}

class _FavouritesPageState extends State<FavouritesPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(primaryColor),
      appBar: AppBar(
        surfaceTintColor: Color(primaryColor),
        backgroundColor: Color(primaryColor),
        elevation: 0,
        leading: GestureDetector(
          onTap: () => Navigator.of(context).pop(),
          child: Icon(Icons.arrow_back_ios),
        ),
        title: Text("Favourites"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: ListView.builder(
          itemBuilder: (context, index) => ChefListTile(),
        ),
      ),
    );
  }
}
