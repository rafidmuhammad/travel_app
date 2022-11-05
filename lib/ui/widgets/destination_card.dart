import 'package:flutter/material.dart';
import 'package:new_flutter_app/shared/theme.dart';
import 'package:new_flutter_app/ui/pages/detail_page.dart';

class DestinationCard extends StatelessWidget {
  final String name;
  final String city;
  final String imageUrl;
  final double rating;

  const DestinationCard(
      {super.key,
      required this.name,
      required this.city,
      required this.imageUrl,
      this.rating = 0});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: (() {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => const DetailPage(),
          ),
        );
      }),
      child: Container(
        margin: EdgeInsets.only(left: defaultMargin),
        padding: const EdgeInsets.all(10),
        width: 200,
        height: 323,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(defaultRadius),
            color: whitecolor),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              margin: const EdgeInsets.only(bottom: 20),
              width: 180,
              height: 220,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(defaultRadius),
                  image: DecorationImage(image: AssetImage(imageUrl))),
              child: Align(
                alignment: Alignment.topRight,
                child: Container(
                  width: 55,
                  height: 30,
                  decoration: BoxDecoration(
                      color: whitecolor,
                      borderRadius: const BorderRadius.only(
                          bottomLeft: Radius.circular(18))),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                        margin: const EdgeInsets.only(left: 2),
                        width: 24,
                        height: 24,
                        child: Icon(Icons.star, color: yellowColor),
                      ),
                      Text(
                        rating.toString(),
                        style: blackTextStyle.copyWith(fontWeight: medium),
                      )
                    ],
                  ),
                ),
              ),
            ),
            Container(
              margin: const EdgeInsets.only(left: 10),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    name,
                    style: blackTextStyle.copyWith(
                        fontSize: 18, fontWeight: medium),
                  ),
                  // ignore: prefer_const_constructors
                  SizedBox(
                    height: 5,
                  ),
                  Text(
                    city,
                    style: greyTextStyle.copyWith(fontWeight: light),
                  )
                ],
              ),
            ),
            // ignore: prefer_const_constructors
          ],
        ),
      ),
    );
  }
}
