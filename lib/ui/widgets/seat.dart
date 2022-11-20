import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:new_flutter_app/cubit/seat_cubit.dart';
import 'package:new_flutter_app/shared/theme.dart';

class SeatItem extends StatelessWidget {
  final bool isAvailable;

  final String id;
  //todo : 0 -> available, 1 -> selected, 2 -> unavailable
  const SeatItem({
    super.key,
    required this.id,
    this.isAvailable = true,
  });

  @override
  Widget build(BuildContext context) {
    bool isSelected = context.watch<SeatCubit>().isSelected(id);

    backgroundColor() {
      if (!isAvailable) {
        return unavailableColor;
      } else {
        if (isSelected) {
          return primarycolor;
        } else {
          return availableColor;
        }
      }
    }

    borderColor() {
      if (!isAvailable) {
        return unavailableColor;
      } else {
        return primarycolor;
      }
    }

    child() {
      if (isSelected) {
        return Center(
            child: Text(
          "YOU",
          style: whiteTextStyle.copyWith(fontWeight: semibold),
        ));
      } else {
        return const SizedBox();
      }
    }

    return GestureDetector(
      onTap: () {
        if (isAvailable) {
          context.read<SeatCubit>().addItem(id);
        }
      },
      child: Container(
        width: 48,
        height: 48,
        decoration: BoxDecoration(
          border: Border.all(color: borderColor(), width: 2),
          color: backgroundColor(),
          borderRadius: BorderRadius.circular(15),
        ),
        child: child(),
      ),
    );
  }
}
