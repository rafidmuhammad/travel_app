import 'package:flutter/material.dart';
import 'package:new_flutter_app/shared/theme.dart';
import 'package:new_flutter_app/ui/pages/success_checkout.dart';
import 'package:new_flutter_app/ui/widgets/custom_button.dart';
import 'package:new_flutter_app/ui/widgets/detail_item.dart';
import 'package:new_flutter_app/ui/widgets/tacbutton.dart';

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
                      image: const DecorationImage(
                          fit: BoxFit.cover,
                          image: AssetImage("assets/image_dest_1.png"))),
                ),
                const SizedBox(
                  width: 16,
                ),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Lake Ciliwung",
                        style: blackTextStyle.copyWith(
                            fontWeight: medium,
                            fontSize: 18,
                            overflow: TextOverflow.ellipsis),
                      ),
                      Text(
                        "Tangerang",
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
                      "4.8",
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
                detail: "2 Person", name: "Traveler", valueColor: textcolor),
            BookingDetailsItem(
                detail: "A3, B3", name: "Seat", valueColor: textcolor),
            BookingDetailsItem(
                detail: "YES", name: "Insurance", valueColor: greencolor),
            BookingDetailsItem(
                detail: "NO", name: "Refundable", valueColor: redcolor),
            BookingDetailsItem(
                detail: "45%", name: "VAT", valueColor: textcolor),
            BookingDetailsItem(
                detail: "IDR 8.500.690", name: "Price", valueColor: textcolor),
            BookingDetailsItem(
                detail: "IDR 12.000.000",
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
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "IDR 80.400.000",
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
                ),
              ],
            ),
          ],
        ),
      );
    }

    Widget paynowButton() {
      return CustomButton(
        onPressed: () {
          Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => const SuccessCheckout(),
              ));
        },
        title: "Pay Now",
        margin: const EdgeInsets.symmetric(vertical: 30),
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
