import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/state_manager.dart';
import 'package:kazatest/src/features/authentication/controller/signup_controller.dart';
import 'package:kazatest/src/features/authentication/screens/user/homepage/homepage.dart';
import 'package:kazatest/src/features/authentication/screens/welcome/welcomepage.dart';
import 'package:kazatest/src/repository/authentication_repository/exceptions/exceptions.dart';

class authenticationRepository extends GetxController{
  static authenticationRepository get instance => Get.find();

  final _auth = FirebaseAuth.instance;
  Rx<User?> firebaseUser;
  authenticationRepository(this.firebaseUser);

  @override
  void onReady(){
    firebaseUser = Rx<User?>(_auth.currentUser);
    firebaseUser.bindStream(_auth.userChanges());
    ever(firebaseUser, _setinitialScreen);
  }


  _setinitialScreen(User? user) {
    user == null ? Get.offAll(()=> homepage()): Get.offAll(()=> const welcomepage());

  }
  Future<void> createuserWithEmailandPassword(String email, String password) async{
  try {
    await _auth.createUserWithEmailAndPassword(email:email, password: password);
    firebaseUser.value != null ? Get.offAll(()=> welcomepage()): Get.offAll(()=> homepage());
  } on FirebaseAuthException catch (e){
    final ex = signupwithemailpasswordfailure.code(e.code);
    print('firebase exception- ${ex.message}');
    throw ex;
  }catch(_){
    final ex = signupwithemailpasswordfailure();
    print(' exception- ${ex.message}');
    throw ex;
  }
  }

  Future<void> loginWithEmailandPassword(String email, String password) async{
  try {
    await _auth.signInWithEmailAndPassword(email:email, password: password);
  } on FirebaseAuthException catch (e){
  }catch(_){}
  }

  Future<void> logout() async => await _auth.signOut();
}

