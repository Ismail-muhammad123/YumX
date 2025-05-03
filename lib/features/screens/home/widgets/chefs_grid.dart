import 'package:flutter/material.dart';
import 'package:foodi/core/constants/colors.dart';
import 'package:foodi/features/models/chef_model.dart';
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
    return SizedBox(
      height: 200,
      width: double.maxFinite,
      child: GridView.builder(
        itemCount: widget.chefs.length + 1,
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: MediaQuery.of(context).size.width > 600 ? 6 : 4,
          mainAxisSpacing: 2,
          crossAxisSpacing: 10,
          childAspectRatio: 1.5,
        ),
        itemBuilder: (context, index) {
          if (index == widget.chefs.length) {
            // Add a button to view al chefs
            return Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Icon(Icons.apps, color: Color(secondaryColor)),
                const SizedBox(height: 5),
                Text(
                  "View all chefs",
                  style: const TextStyle(
                    fontSize: 12,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ],
            );
          }
          final chef = widget.chefs[index];
          return Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              RoundedImage(image: NetworkImage(chef.imageUrl!), size: 35),
              const SizedBox(height: 5),
              Text(
                chef.name ?? "",
                style: const TextStyle(
                  fontSize: 12,
                  fontWeight: FontWeight.w500,
                ),
              ),
            ],
          );
        },
      ),
    );
  }
}
