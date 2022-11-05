import 'package:flutter/material.dart';
import 'package:new_flutter_app/shared/theme.dart';

class SeatItem extends StatelessWidget {
  final int status;
  //todo : 0 -> available, 1 -> selected, 2 -> unavailable
  const SeatItem({super.key, required this.status});

  @override
  Widget build(BuildContext context) {
    backgroundColor() {
      switch (status) {
        case 0:
          return availableColor;
        case 1:
          return primarycolor;
        case 2:
          return unavailableColor;
        default:
          return unavailableColor;
      }
    }

    borderColor() {
      switch (status) {
        case 0:
          return primarycolor;
        case 1:
          return primarycolor;
        case 2:
          return unavailableColor;
        default:
          return unavailableColor;
      }
    }

    child() {
      if (status == 1) {
        return Center(
            child: Text(
          "YOU",
          style: whiteTextStyle.copyWith(fontWeight: semibold),
        ));
      } else {
        return const SizedBox();
      }
    }

    return Container(
      width: 48,
      height: 48,
      decoration: BoxDecoration(
        border: Border.all(color: borderColor(), width: 2),
        color: backgroundColor(),
        borderRadius: BorderRadius.circular(15),
      ),
      child: child(),
    );
  }
}
