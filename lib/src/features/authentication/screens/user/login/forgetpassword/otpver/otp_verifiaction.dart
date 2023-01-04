import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:kazatest/src/constants/images.dart';
import 'package:kazatest/src/features/authentication/screens/user/login/forgetpassword/otpver/otp_check.dart';
import 'package:kazatest/src/routing/routes.dart';
import 'package:lottie/lottie.dart';

class OTPVerification extends StatelessWidget {
  var phno ="";

  String get phone => phno;



  @override
  Widget build(BuildContext context) {
    String userId='';
    final size = MediaQuery.of(context).size;
    return Scaffold(
      resizeToAvoidBottomInset: true,
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(
              height: 120,
            ),
            Container(
              child: Center(
                child: Lottie.asset(otpver,height: size.height*0.4),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 20),
              child: Align(
                alignment: Alignment.centerLeft,
                child: Text('Please enter the Phone No to recieve the verification code',style: GoogleFonts.teko(fontSize: 35,fontWeight: FontWeight.bold),),
              ),
            ) ,
            Padding(
              padding: const EdgeInsets.all(20),
              child: TextFormField(
                      decoration: const InputDecoration(
                        prefixIcon: Icon(Icons.numbers),
                        labelText: 'Phone no',  
                        hintText: 'Enter your Number',
                        border: OutlineInputBorder(),
                      ),
                      onChanged: (value) {
                        phno = value ;
                      },
                    ),
            ),
            Padding(
              padding: const EdgeInsets.all(20),
              child: Container(
                        width: double.infinity,
                        child: ElevatedButton(
                        onPressed: () {
                          Navigator.pushNamed(context, myRoutes.OTPcheckroute, arguments: phno);  
                        },
                        style: ElevatedButton.styleFrom(
                          shape: const RoundedRectangleBorder(),
                          foregroundColor: Colors.white,
                          backgroundColor: const Color.fromARGB(219, 14, 13, 13),
                          side: const BorderSide(color :  Color.fromARGB(219, 14, 13, 13)),
                          padding: const EdgeInsets.symmetric(vertical: 20),
                        ),
                      child: const Text('Proceed')),
                      ),
            ),
          ],
        ),
      ),
    );
  }
}