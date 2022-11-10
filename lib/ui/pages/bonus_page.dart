import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:new_flutter_app/cubit/auth_cubit.dart';
import 'package:new_flutter_app/shared/theme.dart';
import 'package:new_flutter_app/ui/widgets/custom_button.dart';
import 'package:new_flutter_app/currency_formatter.dart';

class BonusPage extends StatelessWidget {
  const BonusPage({super.key});

  @override
  Widget build(BuildContext context) {
    Widget bonusCard() {
      return BlocBuilder<AuthCubit, AuthState>(
        builder: (context, state) {
          if (state is AuthSuccess) {
            return Container(
              width: 300,
              height: 211,
              padding: EdgeInsets.all(defaultMargin),
              decoration: BoxDecoration(
                  image: const DecorationImage(
                      image: AssetImage("assets/image_card.png")),
                  boxShadow: [
                    BoxShadow(
                        color: primarycolor.withOpacity(0.5),
                        blurRadius: 50,
                        offset: const Offset(0, 10))
                  ]),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Name',
                              style: whiteTextStyle.copyWith(fontWeight: light),
                            ),
                            Text(
                              state.user.name,
                              style: whiteTextStyle.copyWith(
                                  fontSize: 20, fontWeight: medium),
                              overflow: TextOverflow.ellipsis,
                            )
                          ],
                        ),
                      ),
                      Container(
                        width: 24,
                        height: 24,
                        margin: const EdgeInsets.only(right: 6),
                        decoration: const BoxDecoration(
                            image: DecorationImage(
                                image: AssetImage("assets/icon_plane.png"))),
                      ),
                      Text(
                        "Pay",
                        style: whiteTextStyle.copyWith(
                            fontSize: 16, fontWeight: medium),
                      )
                    ],
                  ),
                  const Spacer(),
                  Text(
                    "Balance",
                    style: whiteTextStyle.copyWith(fontWeight: light),
                  ),
                  Text(
                    CurrencyFormat.convertToIdr(state.user.balance, 0),
                    style: whiteTextStyle.copyWith(
                        fontSize: 26, fontWeight: medium),
                  )
                ],
              ),
            );
          } else {
            return const SizedBox();
          }
        },
      );
    }

    Widget title() {
      return Container(
        margin: const EdgeInsets.only(top: 80),
        child: Text(
          'Big Bonus 🎉',
          style: blackTextStyle.copyWith(fontSize: 32, fontWeight: semibold),
        ),
      );
    }

    Widget subTitle() {
      return Container(
        margin: const EdgeInsets.only(top: 10),
        child: Text(
          textAlign: TextAlign.center,
          'We give you early credit so that\nyou can buy a flight ticket',
          style: greyTextStyle.copyWith(fontSize: 16, fontWeight: light),
        ),
      );
    }

    Widget startButton() {
      return CustomButton(
          margin: const EdgeInsets.only(top: 50),
          width: 220,
          onPressed: () {
            Navigator.pushNamedAndRemoveUntil(
              context,
              '/main-page',
              (route) => false,
            );
          },
          title: "Start Fly Now");
    }

    return Scaffold(
      backgroundColor: backgroundcolor,
      body: Center(
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [bonusCard(), title(), subTitle(), startButton()],
          ),
        ),
      ),
    );
  }
}
