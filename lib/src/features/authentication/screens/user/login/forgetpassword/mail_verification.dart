import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:kazatest/src/constants/images.dart';
import 'package:kazatest/src/routing/routes.dart';
import 'package:lottie/lottie.dart';

class mailVerification extends StatelessWidget {
  const mailVerification({super.key});

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
                child: Lottie.asset(mailver,height: size.height*0.4),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 20),
              child: Align(
                alignment: Alignment.centerLeft,
                child: Text('Please enter the Mail Id to recieve the verification code',style: GoogleFonts.teko(fontSize: 35,fontWeight: FontWeight.bold),),
              ),
            ) ,
            Padding(
              padding: const EdgeInsets.all(20),
              child: TextFormField(
                decoration: const InputDecoration(
                  prefixIcon: Icon(Icons.email_outlined),
                  labelText: 'Email Id',  
                  hintText: 'Enter your email address',
                  border: OutlineInputBorder(),
                  ),
                  keyboardType: TextInputType.emailAddress,
                  onChanged: (value) {
                    userId=value;
                  },
                ),
            ),
            Padding(
              padding: const EdgeInsets.all(20),
              child: Container(
                        width: double.infinity,
                        child: ElevatedButton(
                        onPressed: () {
                          Navigator.pushNamed(context, myRoutes.loginroute);  
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