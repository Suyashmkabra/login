import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:kazatest/src/constants/icons.dart';
import 'package:kazatest/src/constants/images.dart';
import 'package:kazatest/src/routing/routes.dart';
    // ignore: prefer_const_literals_to_create_immutables
                        

class signuppage extends StatefulWidget {
 
  @override
  State<signuppage> createState() => _signuppageState();
}

class _signuppageState extends State<signuppage> {
  bool changebutton=false;
  String userId ='';
  String name='';
  String password='';
  String password2='';  
  String phno ='';


  @override
    Widget build(BuildContext context) {
      final size = MediaQuery.of(context).size;
    // ignore: unnecessary_new
    return new Scaffold(
      resizeToAvoidBottomInset: true,
      body: Material(
        color:Colors.white,
        child: SingleChildScrollView(
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 20),
                child: Container(
                  child: Image.asset(signin,height: size.height*0.3,)
                  ),
              ),
              
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 0,horizontal: 32),
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
                      decoration: const InputDecoration(
                        prefixIcon: Icon(Icons.person_outline_outlined),
                        labelText: 'Name',  
                        hintText: 'What should we call you?',
                        border: OutlineInputBorder(),
                      ),
                      textCapitalization: TextCapitalization.words,
                      onChanged: (value) {
                        name=value;
                        setState(() {});
                      },
                    ),

                    const SizedBox(
                      height: 10,
                    ),
    
    
                    TextFormField(
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
                        Navigator.pushNamed(context, myRoutes.loginroute);  
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
            ],
          ),
        ),
      ),
    );
  }
}