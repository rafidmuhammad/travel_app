import 'package:flutter/material.dart';
import 'package:new_flutter_app/shared/theme.dart';

class CheckoutPage extends StatelessWidget {
  const CheckoutPage({super.key});

  @override
  Widget build(BuildContext context) {
    Widget route() {
      return Container(
        margin: const EdgeInsets.only(top: 50),
        child: Column(
          children: [
            Container(
              margin: EdgeInsets.only(bottom: 10),
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
        margin: EdgeInsets.only(top: 30),
        padding: EdgeInsets.symmetric(horizontal: 20, vertical: 30),
        decoration: BoxDecoration(
            color: whitecolor,
            borderRadius: BorderRadius.circular(defaultRadius)),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  width: 70,
                  height: 70,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(defaultRadius),
                      image: DecorationImage(
                          fit: BoxFit.cover,
                          image: AssetImage("assets/image_dest_1.png"))),
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Lake Ciliwung",
                      style: blackTextStyle.copyWith(
                        fontWeight: medium,
                        fontSize: 18,
                      ),
                    ),
                    Text(
                      "Tangerang",
                      style: greyTextStyle.copyWith(fontWeight: light),
                    )
                  ],
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
                      "4.8",
                      style: blackTextStyle.copyWith(fontWeight: medium),
                    )
                  ],
                )
              ],
            ),
            SizedBox(
              height: 20,
            ),
            Text(
              "Booking Details",
              style:
                  blackTextStyle.copyWith(fontSize: 18, fontWeight: semibold),
            )
          ],
        ),
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
          ],
        ),
      ),
    );
  }
}
