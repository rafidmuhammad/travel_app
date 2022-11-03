import 'package:flutter/material.dart';
import 'package:new_flutter_app/shared/theme.dart';

class InterestItem extends StatelessWidget {
  final String interest;
  const InterestItem({super.key, required this.interest});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Row(
        children: [
          Container(
            margin: EdgeInsets.only(right: 6),
            width: 16,
            height: 16,
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage("assets/icon_checklist.png"),
              ),
            ),
          ),
          Text(
            interest,
            style: blackTextStyle,
          )
        ],
      ),
    );
  }
}
