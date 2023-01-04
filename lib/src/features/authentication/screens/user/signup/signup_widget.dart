import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:kazatest/src/features/authentication/controller/signup_controller.dart';
import 'package:kazatest/src/routing/routes.dart';

import '../../../../../constants/icons.dart';

class signupwidget extends StatelessWidget {
  const signupwidget({super.key});

  @override
  @override
  Widget build(BuildContext context) {
    final controller = Get.put(signupController());
    final _formkey = GlobalKey<FormState>();

  bool changebutton=false;
  String userId ='';
  String name='';
  String password='';
  String password2='';  
  String phno ='';
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 0,horizontal: 32),
      child: Form(
        key: _formkey,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
      
            Padding(
              padding: const EdgeInsets.only(bottom: 0),
              child: Align(
                  alignment: Alignment.centerLeft,
                  child: Text("Hi $name,",style: GoogleFonts.teko(fontSize: 40,color: const Color.fromARGB(224, 19, 19, 20),fontWeight: FontWeight.bold),),
                ),
            ),
      
              // ignore: prefer_const_constructors
              Padding(
              padding: const EdgeInsets.only(bottom: 10),
              child: const Align(
                  alignment: Alignment.centerLeft,
                  child: Text("Get on Board,",style: TextStyle(fontSize: 25,color: Color.fromARGB(224, 19, 19, 20)),),
                ),
            ),
              TextFormField(
                controller: controller.name,
              decoration: const InputDecoration(
                prefixIcon: Icon(Icons.person_outline_outlined),
                labelText: 'Name',  
                hintText: 'What should we call you?',
                border: OutlineInputBorder(),
              ),
              textCapitalization: TextCapitalization.words,
              onChanged: (value) {
                name=value;
              },
            ),
      
            const SizedBox(
              height: 10,
            ),
      
      
            TextFormField(
              controller: controller.email,
              decoration: const InputDecoration(
                prefixIcon: Icon(Icons.email_outlined),
                labelText: 'User Id',  
                hintText: 'Enter your email address',
                border: OutlineInputBorder(),
              ),
              keyboardType: TextInputType.emailAddress,
              onChanged: (value) {
                userId=value;
              },
            ),
      
            const SizedBox(
              height: 10,
            ),
      
            TextFormField(
              controller: controller.phoneNo,
              decoration: const InputDecoration(
                prefixIcon: Icon(Icons.numbers),
                labelText: 'Phone no',  
                hintText: 'Enter your Number',
                border: OutlineInputBorder(),
              ),
              onChanged: (value) {
                phno=value;
              },
            ),
      
            const SizedBox(
              height: 10,
            ),
      
            TextFormField(
              controller: controller.password,
              scrollPadding: const EdgeInsets.only(bottom: 40),
              obscureText: true,
              decoration: const InputDecoration(
                prefixIcon: Icon(Icons.fingerprint),
                labelText: 'Password',
                hintText: 'Atleast 8 charecters',
                border: OutlineInputBorder(),
              ),
              onChanged: (value) {
                password=value;
              },
            ),
      
            const SizedBox(
              height: 30,
            ),
      
            Container(
              width: double.infinity,
              child: ElevatedButton(
              onPressed: () {
                if(_formkey.currentState!.validate()){
                  signupController.instance.registerUser(controller.email.text.trim(), controller.password.text.trim());
                }
              },
              style: ElevatedButton.styleFrom(
                shape: const RoundedRectangleBorder(),
                foregroundColor: Colors.white,
                backgroundColor: const Color.fromARGB(219, 14, 13, 13),
                side: const BorderSide(color :  Color.fromARGB(219, 14, 13, 13)),
                padding: const EdgeInsets.symmetric(vertical: 20),
              ),
            child: const Text('SIGN UP')),
            ),
      
            const SizedBox(
              height: 20,
            ),
            const Center(
              child: Text('OR'),
            ),
      
            const SizedBox(
              height: 15,
            ),
            SizedBox(
                width: double.infinity,
                height: 50,
                child: OutlinedButton.icon(
                  onPressed: () {},
                  icon: const Image(image: AssetImage(googleicon),width: 40,), 
                  label: const Text('Sign-in with Google',style: TextStyle(color: Color.fromARGB(255, 20, 20, 20)),)),
              ),
      
            Center(
              child: TextButton(onPressed: (){},
                child: const Text.rich(
                TextSpan(
                  // ignore: prefer_const_literals_to_create_immutables
                  children: [
                    TextSpan(text: 'Already have an Account?',style: TextStyle(color: Color.fromARGB(197, 16, 16, 16))),
                    TextSpan(text: ' LOGIN')
                  ]
                )
                )),
            )
      
          ],
        ),
      ),
    );
  }
}

