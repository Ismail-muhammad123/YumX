import "package:flutter/material.dart";

class RoundedImage extends StatelessWidget {
  final ImageProvider image;
  final double? size;
  const RoundedImage({super.key, required this.image, required this.size});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: size,
      width: size,
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        image: DecorationImage(image: image, fit: BoxFit.cover),
      ),
    );
  }
}
