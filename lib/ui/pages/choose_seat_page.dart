import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:new_flutter_app/cubit/seat_cubit.dart';
import 'package:new_flutter_app/model/destination_model.dart';
import 'package:new_flutter_app/model/transaction_model.dart';
import 'package:new_flutter_app/shared/theme.dart';
import 'package:new_flutter_app/ui/pages/checkout_page.dart';
import 'package:new_flutter_app/ui/widgets/custom_button.dart';
import 'package:new_flutter_app/ui/widgets/seat.dart';

import '../../currency_formatter.dart';

class ChooseSeatPage extends StatelessWidget {
  final DestinationModel destination;
  const ChooseSeatPage(this.destination, {super.key});

  @override
  Widget build(BuildContext context) {
    Widget title() {
      return Container(
        margin: const EdgeInsets.only(top: 30),
        child: Text(
          "Select Your\nFavorite Seat",
          style: blackTextStyle.copyWith(fontSize: 24, fontWeight: semibold),
        ),
      );
    }

    Widget seatStatus() {
      return Container(
        margin: const EdgeInsets.only(top: 30),
        child: Row(
          children: [
            //todo : available
            Container(
              width: 16,
              height: 16,
              decoration: const BoxDecoration(
                image: DecorationImage(
                  image: AssetImage("assets/icon_available.png"),
                ),
              ),
            ),
            const SizedBox(
              width: 6,
            ),
            Text(
              "Available",
              style: blackTextStyle,
            ),
            const SizedBox(
              width: 10,
            ),
            //todo : Selected
            Container(
              width: 16,
              height: 16,
              decoration: const BoxDecoration(
                image: DecorationImage(
                  image: AssetImage("assets/icon_selected.png"),
                ),
              ),
            ),
            const SizedBox(
              width: 6,
            ),
            Text(
              "Selected",
              style: blackTextStyle,
            ),
            const SizedBox(
              width: 10,
            ),
            //todo : Selected
            Container(
              width: 16,
              height: 16,
              decoration: const BoxDecoration(
                image: DecorationImage(
                  image: AssetImage("assets/icon_unavailable.png"),
                ),
              ),
            ),
            const SizedBox(
              width: 6,
            ),
            Text(
              "Unavailable",
              style: blackTextStyle,
            ),
          ],
        ),
      );
    }

    Widget seat() {
      return Container(
        margin: const EdgeInsets.only(top: 30),
        padding: const EdgeInsets.symmetric(horizontal: 22, vertical: 30),
        width: double.infinity,
        decoration: BoxDecoration(
            color: whitecolor, borderRadius: BorderRadius.circular(18)),
        child: BlocBuilder<SeatCubit, List<String>>(
          builder: (context, state) {
            return Column(
              children: [
                //todo : seat indicator
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    SizedBox(
                      width: 48,
                      height: 48,
                      child: Center(
                        child: Text(
                          "A",
                          style: greyTextStyle.copyWith(fontSize: 16),
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 48,
                      height: 48,
                      child: Center(
                        child: Text(
                          "B",
                          style: greyTextStyle.copyWith(fontSize: 16),
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 48,
                      height: 48,
                      child: Center(
                        child: Text(
                          " ",
                          style: greyTextStyle.copyWith(fontSize: 16),
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 48,
                      height: 48,
                      child: Center(
                        child: Text(
                          "C",
                          style: greyTextStyle.copyWith(fontSize: 16),
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 48,
                      height: 48,
                      child: Center(
                        child: Text(
                          "D",
                          style: greyTextStyle.copyWith(fontSize: 16),
                        ),
                      ),
                    ),
                  ],
                ),
                //todo : seats 1
                Container(
                  margin: const EdgeInsets.only(top: 16),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      const SeatItem(
                        id: 'A1',
                      ),
                      const SeatItem(
                        id: 'B1',
                      ),
                      SizedBox(
                        width: 48,
                        height: 48,
                        child: Center(
                          child: Text(
                            "1",
                            style: greyTextStyle.copyWith(fontSize: 16),
                          ),
                        ),
                      ),
                      const SeatItem(
                        id: "C1",
                      ),
                      const SeatItem(
                        id: "D1",
                      ),
                    ],
                  ),
                ),
                //todo : seats 2
                Container(
                  margin: const EdgeInsets.only(top: 16),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      const SeatItem(
                        id: "A2",
                      ),
                      const SeatItem(
                        id: "B2",
                      ),
                      SizedBox(
                        width: 48,
                        height: 48,
                        child: Center(
                          child: Text(
                            "2",
                            style: greyTextStyle.copyWith(fontSize: 16),
                          ),
                        ),
                      ),
                      const SeatItem(
                        id: "C2",
                      ),
                      const SeatItem(
                        id: "D2",
                      ),
                    ],
                  ),
                ),
                //todo : seats 3
                Container(
                  margin: const EdgeInsets.only(top: 16),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      const SeatItem(
                        id: "A3",
                      ),
                      const SeatItem(
                        id: "B3",
                      ),
                      SizedBox(
                        width: 48,
                        height: 48,
                        child: Center(
                          child: Text(
                            "3",
                            style: greyTextStyle.copyWith(fontSize: 16),
                          ),
                        ),
                      ),
                      const SeatItem(
                        id: "C3",
                      ),
                      const SeatItem(
                        id: "D3",
                      ),
                    ],
                  ),
                ),
                //todo : seats 4
                Container(
                  margin: const EdgeInsets.only(top: 16),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      const SeatItem(
                        id: "A4",
                      ),
                      const SeatItem(
                        id: "B4",
                      ),
                      SizedBox(
                        width: 48,
                        height: 48,
                        child: Center(
                          child: Text(
                            "4",
                            style: greyTextStyle.copyWith(fontSize: 16),
                          ),
                        ),
                      ),
                      const SeatItem(
                        id: "C4",
                      ),
                      const SeatItem(
                        id: "D4",
                      ),
                    ],
                  ),
                ),
                //todo : seats 5
                Container(
                  margin: const EdgeInsets.only(top: 16),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      const SeatItem(
                        id: "A5",
                      ),
                      const SeatItem(
                        id: "B5",
                      ),
                      SizedBox(
                        width: 48,
                        height: 48,
                        child: Center(
                          child: Text(
                            "5",
                            style: greyTextStyle.copyWith(fontSize: 16),
                          ),
                        ),
                      ),
                      const SeatItem(
                        id: "C5",
                      ),
                      const SeatItem(
                        id: "D5",
                      ),
                    ],
                  ),
                ),
                const SizedBox(
                  height: 30,
                ),
                //todo info
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Your Seat",
                      style: greyTextStyle.copyWith(fontWeight: light),
                    ),
                    Text(
                      state.join(", "),
                      style: blackTextStyle.copyWith(
                          fontSize: 16, fontWeight: medium),
                    )
                  ],
                ),
                //todo : price
                const SizedBox(
                  height: 16,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Total",
                      style: greyTextStyle.copyWith(fontWeight: light),
                    ),
                    Text(
                      CurrencyFormat.convertToIdr(
                          state.length * destination.price, 0),
                      style: purpleTextStyle.copyWith(
                          fontWeight: semibold, fontSize: 16),
                    )
                  ],
                ),
              ],
            );
          },
        ),
      );
    }

    Widget checkoutButton() {
      return BlocBuilder<SeatCubit, List<String>>(
        builder: (context, state) {
          return CustomButton(
            onPressed: () {
              int price = destination.price * state.length;

              Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => CheckoutPage(TransactionModel(
                        destination: destination,
                        totalTraveler: state.length,
                        selectedSeat: state.join(", "),
                        insurance: true,
                        refundable: false,
                        price: price,
                        grandTotal: (price * 1.45).toInt(),
                        vat: 0.45)),
                  ));
            },
            title: "Continue to Checkout",
            margin: const EdgeInsets.only(top: 30, bottom: 46),
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
            title(),
            seatStatus(),
            seat(),
            checkoutButton(),
          ],
        ),
      ),
    );
  }
}
