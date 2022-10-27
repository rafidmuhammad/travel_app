import 'package:flutter/material.dart';
import 'package:new_flutter_app/shared/theme.dart';

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
        margin: const EdgeInsets.only(top: 30),
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
            left: defaultMargin, right: defaultMargin, top: 310),
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
              margin: const EdgeInsets.only(top: 30),
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 30),
              child: Text("data"),
            ),
          ],
        ),
      );
    }

    return Scaffold(
      backgroundColor: backgroundcolor,
      body: Stack(
        children: [
          backgroundImage(),
          customShadow(),
          emblem(),
          content(),
        ],
      ),
    );
  }
}
