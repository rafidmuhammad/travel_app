import 'package:flutter/material.dart';
import 'package:new_flutter_app/shared/theme.dart';

class PhotoItem extends StatelessWidget {
  final String imageUrl;
  const PhotoItem({super.key, required this.imageUrl});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 70,
      height: 70,
      margin: EdgeInsets.only(right: 16),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(18),
        image: DecorationImage(
          image: AssetImage(imageUrl),
        ),
      ),
    );
  }
}
