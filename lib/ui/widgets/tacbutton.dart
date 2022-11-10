import 'package:flutter/material.dart';
import 'package:new_flutter_app/shared/theme.dart';

class CustomTextButton extends StatelessWidget {
  final String name;
  final EdgeInsets margin;
  const CustomTextButton(
      {super.key,
      this.margin = EdgeInsets.zero,
      required this.onPressed,
      required this.name});
  final Function() onPressed;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: margin,
      child: TextButton(
          onPressed: onPressed,
          child: Text(
            name,
            style: greyTextStyle.copyWith(
                fontSize: 16,
                fontWeight: light,
                decoration: TextDecoration.underline),
          )),
    );
  }
}
