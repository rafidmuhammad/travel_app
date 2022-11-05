import 'package:flutter/material.dart';
import 'package:new_flutter_app/shared/theme.dart';

class TacButton extends StatelessWidget {
  final EdgeInsets margin;
  const TacButton({super.key, this.margin = EdgeInsets.zero});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: margin,
      child: TextButton(
          onPressed: () {},
          child: Text(
            "Terms and Condition",
            style: greyTextStyle.copyWith(
                fontSize: 16,
                fontWeight: light,
                decoration: TextDecoration.underline),
          )),
    );
  }
}
