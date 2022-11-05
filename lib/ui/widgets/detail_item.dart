import 'package:flutter/material.dart';
import 'package:new_flutter_app/shared/theme.dart';

class BookingDetailsItem extends StatelessWidget {
  final String name;
  final String detail;
  final Color valueColor;
  const BookingDetailsItem(
      {super.key,
      required this.name,
      required this.detail,
      required this.valueColor});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(top: 16),
      child: Row(
        children: [
          Container(
            width: 16,
            height: 16,
            margin: const EdgeInsets.only(right: 6),
            decoration: const BoxDecoration(
              image: DecorationImage(
                image: AssetImage("assets/icon_checklist.png"),
              ),
            ),
          ),
          Text(
            name,
            style: blackTextStyle,
          ),
          const Spacer(),
          Text(
            detail,
            style: blackTextStyle.copyWith(
                fontWeight: semibold, color: valueColor),
          )
        ],
      ),
    );
  }
}
