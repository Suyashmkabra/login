import 'package:flutter/foundation.dart';

class signupwithemailpasswordfailure{
  final String message;

  signupwithemailpasswordfailure([this.message= 'an unkonoew error has occured']);

  factory signupwithemailpasswordfailure.code(String code)
  {
    switch(code){
      case 'weak_password': 
      return signupwithemailpasswordfailure('please enter a stromnger pass word');

      case 'already_email_in_use': 
      return signupwithemailpasswordfailure('an account already exists on this email ');

      default: return signupwithemailpasswordfailure();
    }
  }

}