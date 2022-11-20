import 'package:flutter/material.dart';
import 'package:new_flutter_app/model/transaction_model.dart';
import 'package:new_flutter_app/shared/theme.dart';
import 'package:new_flutter_app/ui/widgets/detail_item.dart';

import '../../currency_formatter.dart';

class TransactionCard extends StatelessWidget {
  final TransactionModel transaction;
  const TransactionCard(this.transaction, {super.key});

  @override
  Widget build(BuildContext context) {
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
                        image: NetworkImage(transaction.destination.imageUrl))),
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
            style: blackTextStyle.copyWith(fontSize: 16, fontWeight: semibold),
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
    ;
  }
}
