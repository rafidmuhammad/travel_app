import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:new_flutter_app/cubit/page_cubit.dart';
import 'package:new_flutter_app/shared/theme.dart';
import 'package:new_flutter_app/ui/widgets/custom_button.dart';

class SuccessCheckout extends StatelessWidget {
  const SuccessCheckout({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backgroundcolor,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              'assets/image_success.png',
              width: 300,
              height: 150,
            ),
            const SizedBox(
              height: 80,
            ),
            Text(
              "Well Booked 😍",
              style:
                  blackTextStyle.copyWith(fontSize: 32, fontWeight: semibold),
            ),
            Text(
              textAlign: TextAlign.center,
              "Are you ready to explore the new\nworld of experiences?",
              style: greyTextStyle.copyWith(fontSize: 16, fontWeight: light),
            ),
            CustomButton(
              margin: const EdgeInsets.only(top: 50),
              onPressed: () {
                Navigator.pushNamedAndRemoveUntil(
                    context, '/main-page', (route) => false);
                context.read<PageCubit>().setPage(1);
              },
              title: "My Bookings",
              width: 220,
            )
          ],
        ),
      ),
    );
  }
}
