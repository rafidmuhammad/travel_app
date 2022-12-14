import 'package:flutter/material.dart';
import 'package:new_flutter_app/model/destination_model.dart';
import 'package:new_flutter_app/shared/theme.dart';
import 'package:new_flutter_app/ui/pages/detail_page.dart';

class DestinationTile extends StatelessWidget {
  final DestinationModel destination;
  const DestinationTile(
    this.destination, {
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => DetailPage(destination),
            ));
      },
      child: Container(
        width: MediaQuery.of(context).size.width - (2 * defaultMargin),
        height: 90,
        padding: const EdgeInsets.all(10),
        margin: const EdgeInsets.only(top: 16),
        decoration: BoxDecoration(
            color: whitecolor,
            borderRadius: BorderRadius.circular(defaultRadius)),
        child: Row(
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(defaultRadius),
              child: Image.network(
                destination.imageUrl,
                width: 70,
                height: 70,
              ),
            ),
            const SizedBox(
              width: 16,
            ),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    destination.name,
                    overflow: TextOverflow.ellipsis,
                    style: blackTextStyle.copyWith(
                        fontSize: 18, fontWeight: medium),
                  ),
                  const SizedBox(
                    height: 5,
                  ),
                  Text(
                    destination.city,
                    style: greyTextStyle.copyWith(fontWeight: light),
                  )
                ],
              ),
            ),
            SizedBox(
                width: 24,
                height: 24,
                child: Icon(
                  Icons.star,
                  color: yellowColor,
                )),
            Text(
              destination.rating.toString(),
              style: blackTextStyle.copyWith(fontWeight: medium),
            )
          ],
        ),
      ),
    );
  }
}
