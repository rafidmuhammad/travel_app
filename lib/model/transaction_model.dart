import 'package:equatable/equatable.dart';
import 'package:new_flutter_app/model/destination_model.dart';

class TransactionModel extends Equatable {
  final String id;
  final DestinationModel destination;
  final int totalTraveler;
  final String selectedSeat;
  final bool insurance;
  final bool refundable;
  final double vat;
  final int price;
  final int grandTotal;

  const TransactionModel(
      {this.id = '',
      required this.destination,
      this.totalTraveler = 0,
      this.selectedSeat = '',
      this.insurance = false,
      this.refundable = false,
      this.vat = 0,
      this.price = 0,
      this.grandTotal = 0});

  factory TransactionModel.fromJson(String id, Map<String, dynamic> json) {
    return TransactionModel(
        id: id,
        destination: DestinationModel.fromJson(
            json['destination']['id'], json['destination']),
        grandTotal: json['grandTotal'],
        insurance: json['insurance'],
        price: json['price'],
        refundable: json['refundable'],
        selectedSeat: json['selectedSeat'],
        totalTraveler: json['amountOfTraveler'],
        vat: json['vat']);
  }

  @override
  // TODO: implement props
  List<Object?> get props => [
        destination,
        totalTraveler,
        selectedSeat,
        insurance,
        refundable,
        vat,
        price,
        grandTotal
      ];
}
