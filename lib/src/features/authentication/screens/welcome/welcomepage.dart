import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:kazatest/src/constants/images.dart';
import 'package:kazatest/src/routing/routes.dart';
import 'package:lottie/lottie.dart';

class welcomepage extends StatelessWidget {
  const welcomepage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 235, 233, 233),
      body: Column(
        children: [
           SizedBox(
            height: 130,
          ),
          Center(
            child: Lottie.asset(welcomelottie),
          ),
           SizedBox(
            height: 130,
          ),
          Center(
            child: Text('Welcome to Kaza',style: GoogleFonts.teko(fontSize: 55,fontWeight: FontWeight.bold),),
          ),
          Center(
            child: Text('Explore the delicacies of gullies around you',
            style: GoogleFonts.teko(fontSize: 25,),),
          ),
          Center(
            child: Text('With us, and knowwhat youve been missing on ',
            style: GoogleFonts.teko(fontSize: 25,),),
          ),
          // ignore: prefer_const_constructors
          SizedBox(
            height: 30,
          ),

          Padding(
            padding: const EdgeInsets.all(20),
            child: Row(
              children: [
                Expanded(
                  child: ElevatedButton(
                    onPressed: () {
                      Navigator.pushNamed(context, myRoutes.loginroute);  
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
                
                // ignore: prefer_const_constructors
                SizedBox(
                  width: 10,
                ),
                Expanded(
                  child: OutlinedButton(
                    onPressed: () {
                      Navigator.pushNamed(context, myRoutes.registerroute);
                    },
                    style: OutlinedButton.styleFrom(
                      shape: RoundedRectangleBorder(),
                      foregroundColor:  Color.fromARGB(219, 14, 13, 13),
                      side: BorderSide(color:  Color.fromARGB(219, 14, 13, 13)),
                      padding: EdgeInsets.symmetric(vertical: 20)
                    ),
                    child: Text('SIGN UP')),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}