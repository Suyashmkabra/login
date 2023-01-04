
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:kazatest/src/constants/icons.dart';
import 'package:kazatest/src/features/authentication/screens/user/login/forgetpassword/mailver/mail_verification.dart';
import 'package:kazatest/src/routing/routes.dart';


class loginWidget extends StatelessWidget {
  const loginWidget({super.key});

  @override
  Widget build(BuildContext context) {
    String userId ='';
    String password='';
    return Form(
      child: Padding(
                  padding: const EdgeInsets.symmetric(vertical: 0,horizontal: 32),
                  child: Column(
                    children: [

                       Align(
                          alignment: Alignment.centerLeft,
                          child: Text("Welcome back,",style: GoogleFonts.teko(fontSize: 55,color: Color.fromARGB(255, 13, 13, 13)),),
                        ),
                        Align(
                          alignment: Alignment.centerLeft,
                          child: Text('Discover,Connect & transact with ease and community',style:GoogleFonts.teko(fontSize: 20) ), 
                        ),

                      Form(
                        child: Column(
                          children: [
                            TextFormField(
                              // ignore: prefer_const_constructors
                              decoration: InputDecoration(
                                prefixIcon: Icon(Icons.person_outline_outlined),
                                labelText: 'Email Id',  
                                hintText: 'Enter your email Address',
                                border: OutlineInputBorder(),
                              ),
                              keyboardType: TextInputType.text,
                              textCapitalization:TextCapitalization.words ,
                              onChanged: (value) {
                                userId=value;
                              },
                            ),
                            SizedBox(
                              height: 20,
                            ),
                            TextFormField(
                              obscureText: true,
                              decoration: InputDecoration(
                                prefixIcon: Icon(Icons.fingerprint),
                                labelText: 'Password',
                                hintText: 'Atleast 8 charecters',
                                suffixIcon: IconButton(
                                  onPressed: () {
                                    null;
                                  },
                                  icon: Icon(Icons.remove_red_eye_sharp),
                                ),
                                border: OutlineInputBorder(),
                              ),
                              onChanged: (value) {
                                password=value;
                              },
                            ),

                            Align(
                              alignment: Alignment.centerRight,
                              child: TextButton(onPressed: () {
                                showModalBottomSheet(
                                  context: context, 
                                  shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
                                  builder: (context)=> Container(
                                    padding: EdgeInsets.all( 30 ),
                                    child: Column(
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      children: [
                                        Text('Make Selection!',style: GoogleFonts.teko(fontSize: 40,fontWeight: FontWeight.bold),),
                                        Text('select one of the options below to reset you password',),
                                        const SizedBox(
                                          height:30,
                                        ),
                                        forgotPasswordWidget(
                                          onTap: (){
                                            Navigator.pop(context);
                                            Navigator.pushNamed(context, myRoutes.mailVerroute);
                                          },
                                          btnicon: Icons.email_outlined, 
                                          title: 'E-Mail',  
                                          subtitle: 'Send a Verification Mail',
                                        ),
                                        SizedBox(
                                          height: 10,
                                        ),
                                        forgotPasswordWidget(
                                          onTap: (){
                                            Navigator.pop(context);
                                            Navigator.pushNamed(context, myRoutes.OTPVerroute);
                                          },
                                          btnicon: Icons.mobile_friendly_outlined, 
                                          title: 'Message',  
                                          subtitle: 'Send a OTP to your device',
                                        ),
                                      ],
                                    ),
                                  )
                                );
                              }, child: Text('Forgot Password ?')),
                            ),

                            SizedBox(
                              width: double.infinity,
                              child: ElevatedButton(
                                  onPressed: () {
                                    Navigator.pushNamed(context, myRoutes.homeroute);  
                                  },
                                  style: ElevatedButton.styleFrom(
                                    shape: RoundedRectangleBorder(),
                                    foregroundColor: Colors.white,
                                    backgroundColor: Color.fromARGB(219, 14, 13, 13),
                                    side: BorderSide(color :  Color.fromARGB(219, 14, 13, 13)),
                                    padding: EdgeInsets.symmetric(vertical: 20),
                                  ),
                                child: Text('LOGIN')),
                              ),
                            ],
                          ),
                        ),
                        SizedBox(
                          height: 15,
                          ),
                      Center(
                      child: Text('OR'),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      SizedBox(
                        width: double.infinity,
                        height: 50,
                        child: OutlinedButton.icon(
                          onPressed: () {},
                          icon: Image(image: AssetImage(googleicon),width: 40,), 
                          label: Text('Sign-in with Google',style: TextStyle(color: Color.fromARGB(255, 20, 20, 20)),)),
                      ),

                      SizedBox(
                        height: 20,
                      ),

                      Center(
                          child: TextButton( 
                            child: Text('Dont have a account? sign up here'),
                            onPressed: (()
                            {
                              Navigator.pushNamed(context, myRoutes.registerroute);
                            }
                          )
                        ),
                      ),
                    ],
                  ),
                ),      
    );
  }
}

class forgotPasswordWidget extends StatelessWidget {
  const forgotPasswordWidget({
    required this.btnicon,
    required this.title,
    required this.subtitle,
    required this.onTap,
    Key? key,
  }) : super(key: key);

  final IconData btnicon;
  final String title,subtitle;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        padding: EdgeInsets.all(20),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: Color.fromARGB(215, 220, 217, 217)
        ),
        child: Row(
          children: [
            Icon(btnicon ,size: 60,),
            SizedBox( width: 10,),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(title,style: GoogleFonts.teko(fontSize: 30,fontWeight: FontWeight.bold),),
                Text(subtitle),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
