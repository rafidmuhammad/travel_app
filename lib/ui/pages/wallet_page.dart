import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:new_flutter_app/cubit/auth_cubit.dart';
import 'package:new_flutter_app/currency_formatter.dart';
import 'package:new_flutter_app/shared/theme.dart';

class WalletPage extends StatelessWidget {
  const WalletPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(child: BlocBuilder<AuthCubit, AuthState>(
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
                  style:
                      whiteTextStyle.copyWith(fontSize: 26, fontWeight: medium),
                )
              ],
            ),
          );
        } else {
          return const SizedBox();
        }
      },
    ));
  }
}
