import 'package:flutter/material.dart';

class CustomWidget extends StatelessWidget {
  final String assetPath;
  const CustomWidget({super.key, required this.assetPath});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 400,
      width: MediaQuery.of(context).size.width,
      decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage(assetPath),
            fit: BoxFit.cover,
          ),
          borderRadius: BorderRadius.circular(20)),
    );
  }
}