import 'package:flutter/material.dart';
import 'package:new_flutter_app/shared/theme.dart';

class NavBar extends StatelessWidget {
  final String imageUrl;
  final bool isActive;
  const NavBar({super.key, required this.imageUrl, this.isActive = false});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const Spacer(),
        Image.asset(imageUrl, width: 24),
        const Spacer(),
        Container(
          width: 30,
          height: 2,
          decoration: BoxDecoration(
              color: isActive ? primarycolor : transparentColor,
              borderRadius: BorderRadius.circular(defaultRadius)),
        )
      ],
    );
  }
}
