import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/state_manager.dart';
import 'package:kazatest/src/repository/authentication_repository/authentication_repository.dart';

class signupController extends GetxController{
  static signupController get instance => Get.find();
  
  final email = TextEditingController();
  final password = TextEditingController();
  final name = TextEditingController();
  final phoneNo = TextEditingController();
  
  void registerUser(String email, String password){
    authenticationRepository.instance.createuserWithEmailandPassword(email, password);
  }
}