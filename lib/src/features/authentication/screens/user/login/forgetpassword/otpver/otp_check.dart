import 'package:flutter/material.dart';
import 'package:kazatest/src/features/authentication/screens/user/login/forgetpassword/otpver/otp_verifiaction.dart';

class otpCheck extends StatelessWidget {
  
  final String number; 
  otpCheck(this.number);

  @override
  
  Widget build(BuildContext context) {
    return Form(
      child: Column(
        children: [
          Text(number)
        ],
      ),
    );
  }
}