import 'package:flutter/material.dart';
import 'package:new_flutter_app/shared/theme.dart';
import 'package:new_flutter_app/ui/pages/checkout_page.dart';
import 'package:new_flutter_app/ui/widgets/custom_button.dart';
import 'package:new_flutter_app/ui/widgets/seat.dart';

class ChooseSeatPage extends StatelessWidget {
  const ChooseSeatPage({super.key});

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
        child: Column(
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
                    status: 2,
                  ),
                  const SeatItem(
                    status: 2,
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
                    status: 0,
                  ),
                  const SeatItem(
                    status: 2,
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
                    status: 0,
                  ),
                  const SeatItem(
                    status: 0,
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
                    status: 0,
                  ),
                  const SeatItem(
                    status: 2,
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
                    status: 1,
                  ),
                  const SeatItem(
                    status: 1,
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
                    status: 0,
                  ),
                  const SeatItem(
                    status: 0,
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
                    status: 0,
                  ),
                  const SeatItem(
                    status: 2,
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
                    status: 0,
                  ),
                  const SeatItem(
                    status: 0,
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
                    status: 2,
                  ),
                  const SeatItem(
                    status: 2,
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
                    status: 0,
                  ),
                  const SeatItem(
                    status: 0,
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
                  "A3, B3",
                  style:
                      blackTextStyle.copyWith(fontSize: 16, fontWeight: medium),
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
                  "IDR 540.000.000",
                  style: purpleTextStyle.copyWith(
                      fontWeight: semibold, fontSize: 16),
                )
              ],
            ),
          ],
        ),
      );
    }

    Widget checkoutButton() {
      return CustomButton(
        onPressed: () {
          Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => const CheckoutPage(),
              ));
        },
        title: "Continue to Checkout",
        margin: const EdgeInsets.only(top: 30, bottom: 46),
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
