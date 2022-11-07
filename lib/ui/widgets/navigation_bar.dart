import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:new_flutter_app/cubit/page_cubit.dart';
import 'package:new_flutter_app/shared/theme.dart';

class NavBar extends StatelessWidget {
  final int index;
  final String imageUrl;
  const NavBar({
    super.key,
    required this.index,
    required this.imageUrl,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        context.read<PageCubit>().setPage(index);
      },
      child: Column(
        children: [
          const Spacer(),
          Image.asset(
            imageUrl,
            width: 24,
            color: context.read<PageCubit>().state == index
                ? primarycolor
                : greycolor,
          ),
          const Spacer(),
          Container(
            width: 30,
            height: 2,
            decoration: BoxDecoration(
                color: context.read<PageCubit>().state == index
                    ? primarycolor
                    : transparentColor,
                borderRadius: BorderRadius.circular(defaultRadius)),
          )
        ],
      ),
    );
  }
}
