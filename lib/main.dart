import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:kazatest/firebase_options.dart';
import 'package:kazatest/src/features/authentication/screens/splashscreen/splash.dart';
import 'package:kazatest/src/features/authentication/screens/user/login/forgetpassword/mailver/mail_verification.dart';
import 'package:kazatest/src/features/authentication/screens/user/login/forgetpassword/otpver/otp_check.dart';
import 'package:kazatest/src/features/authentication/screens/user/login/forgetpassword/otpver/otp_verifiaction.dart';
import 'package:kazatest/src/features/authentication/screens/user/login/loginpage.dart';
import 'package:kazatest/src/features/authentication/screens/user/signup/signuppage.dart';
import 'package:kazatest/src/features/authentication/screens/user/homepage/homepage.dart';
import 'package:kazatest/src/features/authentication/screens/welcome/introscreens/intro.dart';
import 'package:kazatest/src/features/authentication/screens/welcome/welcomepage.dart';
import 'package:kazatest/src/routing/routes.dart';

import 'src/constants/images.dart';

void main(){
  WidgetsFlutterBinding.ensureInitialized();
  Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform
  );
  runApp(loginapp());
}


class loginapp extends StatelessWidget {
  const loginapp({super.key});

  @override
  Widget build(BuildContext context) {
    // ignore: prefer_const_constructors
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: const splashScreen(),
      routes: {
        myRoutes.homeroute:(context) => homepage(),
        myRoutes.loginroute:(context) => loginpage(),
        myRoutes.registerroute:(context) => signuppage(),
        myRoutes.intro:(context) => intro(),  
        myRoutes.welcomeroute:(context) => welcomepage(),
        myRoutes.OTPVerroute:(context) => OTPVerification(), 
        myRoutes.mailVerroute:(context) => mailVerification(),
        myRoutes.OTPcheckroute:(context) => otpCheck(ModalRoute.of(context)?.settings.arguments as String),     
      },
    );
  }
}
