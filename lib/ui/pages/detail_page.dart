import 'package:flutter/material.dart';
import 'package:new_flutter_app/shared/theme.dart';
import 'package:new_flutter_app/ui/pages/choose_seat_page.dart';
import 'package:new_flutter_app/ui/widgets/custom_button.dart';
import 'package:new_flutter_app/ui/widgets/interest_item.dart';
import 'package:new_flutter_app/ui/widgets/photo_item.dart';

class DetailPage extends StatelessWidget {
  const DetailPage({super.key});

  @override
  Widget build(BuildContext context) {
    Widget backgroundImage() {
      return Container(
        width: double.infinity,
        height: 450,
        decoration: const BoxDecoration(
          image: DecorationImage(
            fit: BoxFit.cover,
            image: AssetImage("assets/image_dest_1.png"),
          ),
        ),
      );
    }

    Widget customShadow() {
      return Container(
        margin: const EdgeInsets.only(top: 236),
        height: 214,
        width: double.infinity,
        decoration: BoxDecoration(
          gradient: LinearGradient(
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
              colors: [
                whitecolor.withOpacity(0),
                Colors.black.withOpacity(0.95)
              ]),
        ),
      );
    }

    Widget emblem() {
      return Container(
        width: double.infinity,
        height: 24,
        margin: const EdgeInsets.only(top: 40),
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage("assets/icon_emblem.png"),
          ),
        ),
      );
    }

    Widget content() {
      return Container(
        margin: EdgeInsets.only(
            left: defaultMargin, right: defaultMargin, top: 330),
        child: Column(
          children: [
            Row(
              children: [
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Lake Ciliwung",
                        style: whiteTextStyle.copyWith(
                            fontSize: 24, fontWeight: semibold),
                        overflow: TextOverflow.ellipsis,
                      ),
                      Text(
                        "Tangerang",
                        style: whiteTextStyle.copyWith(
                            fontWeight: light, fontSize: 16),
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
                      ),
                    ),
                    const SizedBox(
                      width: 1,
                    ),
                    Text(
                      "4.8",
                      style: whiteTextStyle.copyWith(fontWeight: medium),
                    )
                  ],
                )
              ],
            ),
            //TODO : details
            Container(
              width: MediaQuery.of(context).size.width - (2 * defaultMargin),
              margin: const EdgeInsets.only(top: 30),
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 30),
              decoration: BoxDecoration(
                color: whitecolor,
                borderRadius: BorderRadius.circular(18),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "About",
                    style: blackTextStyle.copyWith(
                        fontWeight: semibold, fontSize: 16),
                  ),
                  const SizedBox(
                    height: 6,
                  ),
                  Text(
                    "Berada di jalur jalan provinsi yang menghubungkan Denpasar Singaraja serta letaknya yang dekat dengan Kebun Raya Eka Karya menjadikan tempat Bali.",
                    style: blackTextStyle.copyWith(height: 2),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  // TODO : phots
                  Text(
                    "Photos",
                    style: blackTextStyle.copyWith(
                        fontWeight: semibold, fontSize: 16),
                  ),
                  const SizedBox(
                    height: 6,
                  ),
                  Row(
                    children: const [
                      PhotoItem(imageUrl: "assets/image_foto1.png"),
                      PhotoItem(imageUrl: "assets/image_foto2.png"),
                      PhotoItem(imageUrl: "assets/image_foto3.png"),
                    ],
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Text(
                    "Interests",
                    style: blackTextStyle.copyWith(
                        fontSize: 16, fontWeight: semibold),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Row(
                    children: const [
                      InterestItem(interest: "Kids Park"),
                      InterestItem(interest: "Honor Bridge"),
                    ],
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Row(
                    children: const [
                      InterestItem(interest: "City Museum"),
                      InterestItem(interest: "Central Mall"),
                    ],
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 31,
            ),
            Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "IDR 2.500.000",
                        style: blackTextStyle.copyWith(
                            fontSize: 18, fontWeight: medium),
                      ),
                      const SizedBox(
                        height: 5,
                      ),
                      Text(
                        "Per Orang",
                        style: greyTextStyle.copyWith(fontWeight: light),
                      ),
                    ],
                  ),
                ),
                CustomButton(
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const ChooseSeatPage(),
                          ));
                    },
                    title: "Book Now",
                    width: 170),
              ],
            ),
            const SizedBox(
              height: 31,
            ),
          ],
        ),
      );
    }

    return Scaffold(
      backgroundColor: backgroundcolor,
      body: SingleChildScrollView(
        child: Stack(
          children: [
            backgroundImage(),
            customShadow(),
            emblem(),
            content(),
          ],
        ),
      ),
    );
  }
}
