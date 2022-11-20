import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:new_flutter_app/model/transaction_model.dart';

class TransactionService {
  CollectionReference _transactionReference =
      FirebaseFirestore.instance.collection('transactions');

  Future<void> createTransaction(TransactionModel transaction) async {
    try {
      _transactionReference.add(
        {
          'destination': transaction.destination.toJson(),
          'amountOfTraveler': transaction.totalTraveler,
          'selectedSeat': transaction.selectedSeat,
          'insurance': transaction.insurance,
          'refundable': transaction.refundable,
          'vat': transaction.vat,
          'price': transaction.price,
          'grandTotal': transaction.grandTotal
        },
      );
    } catch (e) {
      throw e;
    }
  }

  Future<List<TransactionModel>> fetchTransaction() async {
    try {
      QuerySnapshot snapshot = await _transactionReference.get();
      List<TransactionModel> transactions = snapshot.docs
          .map((e) =>
              TransactionModel.fromJson(e.id, e.data() as Map<String, dynamic>))
          .toList();
      return transactions;
    } catch (e) {
      throw e;
    }
  }
}
