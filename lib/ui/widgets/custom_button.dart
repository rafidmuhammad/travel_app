import 'package:flutter/material.dart';
import 'package:new_flutter_app/shared/theme.dart';

class CustomButton extends StatelessWidget {
  final double width;
  final String title;
  final Function() onPressed;
  final EdgeInsets margin;

  const CustomButton(
      {super.key,
      this.width = double.infinity,
      required this.onPressed,
      required this.title,
      this.margin = EdgeInsets.zero});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: margin,
      width: width,
      height: 55,
      child: TextButton(
          style: TextButton.styleFrom(
              backgroundColor: primarycolor,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(defaultRadius))),
          onPressed: onPressed,
          child: Text(
            title,
            style: whiteTextStyle.copyWith(fontSize: 18, fontWeight: medium),
          )),
    );
  }
}
