import 'package:firebase_auth/firebase_auth.dart';
import 'package:new_flutter_app/model/user_model.dart';
import 'package:new_flutter_app/services/user_service.dart';

class AuthService {
  FirebaseAuth _auth = FirebaseAuth.instance;

  Future<UserModel> signUp({
    required String email,
    required String password,
    required String name,
    String hobby = '',
  }) async {
    try {
      //TODO : melkukan registrasi user baru
      UserCredential credential = await _auth.createUserWithEmailAndPassword(
          email: email, password: password);
      //TODO : simpan passingan user ke bentuk UserModel
      UserModel user = UserModel(
          id: credential.user!.uid,
          email: email,
          name: name,
          hobby: hobby,
          balance: 280000000);

      //TODO : passsing user ke firestore
      await UserService().setUser(user);
      return user;
    } catch (e) {
      throw e;
    }
  }
}
