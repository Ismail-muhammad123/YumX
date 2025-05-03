import 'package:flutter/material.dart';
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
      appBar: AppBar(
        elevation: 0,
        leading: Icon(Icons.arrow_back_ios),
        title: Text("Favourites"),
      ),
      body: ListView.builder(itemBuilder: (context, index) => ChefListTile()),
    );
  }
}
