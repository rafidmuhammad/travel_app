import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:new_flutter_app/cubit/auth_cubit.dart';
import 'package:new_flutter_app/cubit/transaction_cubit.dart';
import 'package:new_flutter_app/currency_formatter.dart';
import 'package:new_flutter_app/model/transaction_model.dart';
import 'package:new_flutter_app/shared/theme.dart';
import 'package:new_flutter_app/ui/pages/success_checkout.dart';
import 'package:new_flutter_app/ui/widgets/custom_button.dart';
import 'package:new_flutter_app/ui/widgets/detail_item.dart';
import 'package:new_flutter_app/ui/widgets/tacbutton.dart';

class CheckoutPage extends StatelessWidget {
  final TransactionModel transaction;
  const CheckoutPage(this.transaction, {super.key});

  @override
  Widget build(BuildContext context) {
    Widget route() {
      return Container(
        margin: const EdgeInsets.only(top: 50),
        child: Column(
          children: [
            Container(
              margin: const EdgeInsets.only(bottom: 10),
              width: double.infinity - (2 * defaultMargin * 1.7),
              height: 65,
              decoration: const BoxDecoration(
                image: DecorationImage(
                  image: AssetImage("assets/image_checkout.png"),
                ),
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "CGK",
                      style: blackTextStyle.copyWith(
                          fontWeight: semibold, fontSize: 24),
                    ),
                    Text(
                      "Tangerang",
                      style: greyTextStyle.copyWith(fontWeight: light),
                    )
                  ],
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    Text(
                      "TLC",
                      style: blackTextStyle.copyWith(
                          fontWeight: semibold, fontSize: 24),
                    ),
                    Text(
                      "Ciliwung",
                      style: greyTextStyle.copyWith(fontWeight: light),
                    )
                  ],
                )
              ],
            )
          ],
        ),
      );
    }

    Widget bookingDetails() {
      return Container(
        width: MediaQuery.of(context).size.width - (2 * defaultMargin),
        margin: const EdgeInsets.only(top: 30),
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 30),
        decoration: BoxDecoration(
            color: whitecolor,
            borderRadius: BorderRadius.circular(defaultRadius)),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                Container(
                  width: 70,
                  height: 70,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(defaultRadius),
                      image: DecorationImage(
                          fit: BoxFit.cover,
                          image:
                              NetworkImage(transaction.destination.imageUrl))),
                ),
                const SizedBox(
                  width: 16,
                ),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        transaction.destination.name,
                        style: blackTextStyle.copyWith(
                            fontWeight: medium,
                            fontSize: 18,
                            overflow: TextOverflow.ellipsis),
                      ),
                      Text(
                        transaction.destination.city,
                        style: greyTextStyle.copyWith(fontWeight: light),
                      )
                    ],
                  ),
                ),
                Row(
                  children: [
                    SizedBox(
                        width: 24,
                        height: 24,
                        child: Icon(
                          Icons.star,
                          color: yellowColor,
                        )),
                    Text(
                      transaction.destination.rating.toString(),
                      style: blackTextStyle.copyWith(fontWeight: medium),
                    )
                  ],
                )
              ],
            ),
            const SizedBox(
              height: 20,
            ),
            Text(
              "Booking Details",
              style:
                  blackTextStyle.copyWith(fontSize: 16, fontWeight: semibold),
            ),

            //NOTE : Booking Details Item
            BookingDetailsItem(
                detail: "${transaction.totalTraveler} person",
                name: "Traveler",
                valueColor: textcolor),
            BookingDetailsItem(
                detail: transaction.selectedSeat,
                name: "Seat",
                valueColor: textcolor),
            BookingDetailsItem(
                detail: transaction.insurance ? "YES" : "NO",
                name: "Insurance",
                valueColor: transaction.insurance ? greencolor : redcolor),
            BookingDetailsItem(
                detail: transaction.refundable ? "YES" : "NO",
                name: "Refundable",
                valueColor: transaction.refundable ? greencolor : redcolor),
            BookingDetailsItem(
                detail: "${(transaction.vat * 100).toStringAsFixed(0)}%",
                name: "VAT",
                valueColor: textcolor),
            BookingDetailsItem(
                detail: CurrencyFormat.convertToIdr(transaction.price, 0),
                name: "Price",
                valueColor: textcolor),
            BookingDetailsItem(
                detail: CurrencyFormat.convertToIdr(transaction.grandTotal, 0),
                name: "Grand Total",
                valueColor: textcolor),
          ],
        ),
      );
    }

    Widget paymentdetails() {
      return Container(
        width: double.infinity,
        margin: const EdgeInsets.only(top: 30),
        padding: const EdgeInsets.symmetric(vertical: 30, horizontal: 20),
        decoration: BoxDecoration(color: whitecolor),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Payment Details",
              style:
                  blackTextStyle.copyWith(fontWeight: semibold, fontSize: 16),
            ),
            const SizedBox(
              height: 16,
            ),
            Row(
              children: [
                Container(
                  width: 100,
                  height: 70,
                  margin: const EdgeInsets.only(right: 16),
                  decoration: const BoxDecoration(
                      image: DecorationImage(
                          image: AssetImage("assets/image_card.png"))),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                        margin: const EdgeInsets.only(right: 6),
                        width: 24,
                        height: 24,
                        decoration: const BoxDecoration(
                          image: DecorationImage(
                            image: AssetImage(
                              "assets/icon_plane.png",
                            ),
                          ),
                        ),
                      ),
                      Text(
                        "Pay",
                        style: whiteTextStyle.copyWith(
                            fontWeight: medium, fontSize: 16),
                      )
                    ],
                  ),
                ),
                BlocBuilder<AuthCubit, AuthState>(
                  builder: (context, state) {
                    return Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          state is AuthSuccess
                              ? CurrencyFormat.convertToIdr(
                                  state.user.balance, 0)
                              : "IDR 0",
                          style: blackTextStyle.copyWith(
                              fontWeight: medium, fontSize: 18),
                        ),
                        const SizedBox(
                          height: 5,
                        ),
                        Text(
                          "Current Balance",
                          style: greyTextStyle.copyWith(fontWeight: light),
                        )
                      ],
                    );
                  },
                ),
              ],
            ),
          ],
        ),
      );
    }

    Widget paynowButton() {
      return BlocConsumer<TransactionCubit, TransactionState>(
        listener: (context, state) {
          // TODO: implement listener
          if (state is TransactionSuccess) {
            Navigator.pushNamedAndRemoveUntil(
                context, '/success', (route) => false);
          } else if (state is TransactionFailed) {
            ScaffoldMessenger.of(context).showSnackBar(
              SnackBar(
                content: Text(state.error),
                backgroundColor: redcolor,
              ),
            );
          }
        },
        builder: (context, state) {
          if (state is TransactionLoading) {
            return const Center(child: CircularProgressIndicator());
          }

          return CustomButton(
            onPressed: () {
              context.read<TransactionCubit>().createTransaction(transaction);
            },
            title: "Pay Now",
            margin: const EdgeInsets.symmetric(vertical: 30),
          );
        },
      );
    }

    return Scaffold(
      backgroundColor: backgroundcolor,
      body: SafeArea(
        child: ListView(
          padding: EdgeInsets.symmetric(horizontal: defaultMargin),
          children: [
            route(),
            bookingDetails(),
            paymentdetails(),
            paynowButton(),
            CustomTextButton(
              margin: const EdgeInsets.only(bottom: 30),
              onPressed: () {},
              name: "Terms and Condition",
            ),
          ],
        ),
      ),
    );
  }
}
