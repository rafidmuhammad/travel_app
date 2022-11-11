import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:new_flutter_app/model/destination_model.dart';

class DestinationService {
  CollectionReference _destinationReference =
      FirebaseFirestore.instance.collection('destinations');

  Future<List<DestinationModel>> fetchDestinations() async {
    try {
      QuerySnapshot snapshot = await _destinationReference.get();
      List<DestinationModel> destinations = snapshot.docs
          .map((e) =>
              DestinationModel.fromJson(e.id, e.data() as Map<String, dynamic>))
          .toList();
      return destinations;
    } catch (e) {
      throw e;
    }
  }
}
