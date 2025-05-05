import 'package:flutter/material.dart';
import 'package:foodi/core/constants/colors.dart';
import 'package:foodi/features/models/chef_model.dart';
import 'package:foodi/features/screens/home/chef/chef_details.dart';
import 'package:foodi/features/screens/home/widgets/rounded_image.dart';

class ChefsGridView extends StatefulWidget {
  final List<ChefModel> chefs;

  const ChefsGridView({super.key, required this.chefs});

  @override
  State<ChefsGridView> createState() => ChefsGridViewState();
}

class ChefsGridViewState extends State<ChefsGridView> {
  @override
  Widget build(BuildContext context) {
    return GridView.count(
      // itemCount: widget.chefs.length + 1,
      // gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
      // ),
      crossAxisCount: MediaQuery.of(context).size.width > 600 ? 6 : 4,
      // childAspectRatio: 1.5,
      mainAxisSpacing: 2,
      crossAxisSpacing: 10,
      children: [
        ...widget.chefs.map((chef) {
          return GestureDetector(
            onTap:
                () => Navigator.of(context).push(
                  MaterialPageRoute(builder: (context) => ChefDetailsPage()),
                ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                RoundedImage(
                  image: NetworkImage(
                    chef.imageUrl!,
                    // fit: BoxFit.cover,
                    // errorBuilder:
                    //     (context, error, stackTrace) => Center(
                    //       child: Icon(
                    //         Icons.error_outline_rounded,
                    //         color: Colors.yellow,
                    //       ),
                    //     ),
                  ),
                  size: 45,
                ),
                const SizedBox(height: 5),
                Text(
                  chef.name ?? "",
                  style: const TextStyle(
                    fontSize: 12,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ],
            ),
          );
        }),
        Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.start,
          mainAxisSize: MainAxisSize.min,
          children: [
            Icon(Icons.apps, color: Color(secondaryColor), size: 40),
            const SizedBox(height: 5),
            Text(
              "More",
              style: const TextStyle(fontSize: 12, fontWeight: FontWeight.w500),
            ),
          ],
        ),
      ],
    );
  }
}
