import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:new_flutter_app/shared/theme.dart';
import 'package:new_flutter_app/ui/widgets/destination_card.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    Widget header() {
      return Container(
        margin:
            EdgeInsets.only(left: defaultMargin, right: defaultMargin, top: 30),
        child: Row(
          children: [
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Howdy,\nKezia Anne",
                    style: blackTextStyle.copyWith(
                        fontSize: 24, fontWeight: semibold),
                    overflow: TextOverflow.ellipsis,
                  ),
                  Text(
                    "Where to fly today?",
                    style:
                        greyTextStyle.copyWith(fontSize: 16, fontWeight: light),
                  )
                ],
              ),
            ),
            Container(
              width: 60,
              height: 60,
              decoration: const BoxDecoration(
                  shape: BoxShape.circle,
                  image: DecorationImage(
                      image: AssetImage("assets/image_profile.png"))),
            )
          ],
        ),
      );
    }

    Widget popularDestination() {
      return Container(
        margin: const EdgeInsets.only(
          top: 30,
        ),
        child: SizedBox(
          height: 323,
          child: ListView(
            scrollDirection: Axis.horizontal,
            children: [DestinationCard(), DestinationCard(), DestinationCard()],
          ),
        ),
      );
    }

    return Container(
      child: ListView(
        children: [
          header(),
          popularDestination(),
        ],
      ),
    );
  }
}
