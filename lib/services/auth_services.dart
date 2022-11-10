import 'package:firebase_auth/firebase_auth.dart';
import 'package:new_flutter_app/model/user_model.dart';
import 'package:new_flutter_app/services/user_service.dart';

class AuthService {
  FirebaseAuth _auth = FirebaseAuth.instance;

  Future<UserModel> signUp(
      {required String email,
      required String password,
      required String name,
      String hobby = ''}) async {
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

  Future<void> signOut() async {
    try {
      _auth.signOut();
    } catch (e) {
      throw e;
    }
  }

  Future<UserModel> signIn(
      {required String email, required String password}) async {
    try {
      UserCredential userCredential = await _auth.signInWithEmailAndPassword(
          email: email, password: password);
      //NOTE : ngambil data user yang sudah ada
      UserModel user =
          await UserService().getUserById(userCredential.user!.uid);
      return user;
    } catch (e) {
      throw e;
    }
  }
}
