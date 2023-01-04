import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:kazatest/src/constants/images.dart';
import 'package:kazatest/src/features/authentication/screens/user/login/loginpage.dart';
import 'package:kazatest/src/features/authentication/screens/user/homepage/homepage.dart';
import 'package:kazatest/src/features/authentication/screens/welcome/introscreens/intro.dart';

class splashScreen extends StatefulWidget {
  const splashScreen({super.key});

  @override
  State<splashScreen> createState() => _splashScreenState();
}

class _splashScreenState extends State<splashScreen> {

  bool animate = false;

  @override
  void initState(){
    startAnimation();
  }

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    double height = size.height;
    double width = size.width;
    return Container(
      color: Color.fromARGB(255, 242, 236, 84),
      child: Scaffold(body
      : Stack(
          // ignore: prefer_const_literals_to_create_immutables
          children: [
            // ignore: prefer_const_constructors
            Positioned( 
              top: -height/28,
              left: width/13.714,
              child: Image.asset(element,scale: 6),
            ),

            Positioned( 
              bottom: height/86.74,
              left: width/41.14,
              child: Image.asset(element3,scale: 5),
            ),

            AnimatedPositioned( 
              duration: Duration(seconds: 5), 
              bottom: height/27,
              right:animate?width/2.74:  width/41.14,
              child: Image.asset(element2,scale: 0.6),
            ),

            AnimatedPositioned( 
              duration: Duration(seconds: 5), 
              top: height/4,
              right:animate?  width/41.14:width/5.14,
              child: Image.asset(kazalight,scale: 1),
            ),
          ],
        )
      ),
    );
  }
  Future startAnimation() async{
    await Future.delayed(Duration(milliseconds: 500));
    setState(() {
      animate= true;
    });
     await Future.delayed(Duration(milliseconds: 5000));
    Navigator.pushReplacement(context, MaterialPageRoute(builder: ((context) => intro())));
  }
}