import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:new_flutter_app/model/user_model.dart';

class UserService {
  CollectionReference _userReference =
      FirebaseFirestore.instance.collection("users");

  //TODO : menambahkan user baru
  Future<void> setUser(UserModel user) async {
    try {
      _userReference.doc(user.id).set(<String, dynamic>{
        'email': user.email,
        'name': user.name,
        'hobby': user.hobby,
        'balance': user.balance
      });
    } catch (e) {
      throw e;
    }
  }

  Future<UserModel> getUserById(String id) async {
    try {
      DocumentSnapshot snapshot = await _userReference.doc(id).get();
      return UserModel(
        id: id,
        email: snapshot['email'],
        name: snapshot['name'],
        hobby: snapshot['hobby'],
        balance: snapshot['balance'],
      );
    } catch (e) {
      throw e;
    }
  }
}
