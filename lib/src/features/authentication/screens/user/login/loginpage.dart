
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:kazatest/src/constants/icons.dart';
import 'package:kazatest/src/constants/images.dart';
import 'package:kazatest/src/features/authentication/screens/user/login/login_widget.dart';
import 'package:kazatest/src/routing/routes.dart';

class loginpage extends StatefulWidget {

  @override
  State<loginpage> createState() => _loginpageState();
}

class _loginpageState extends State<loginpage> {
  bool changebutton=false;
  final _formkey = GlobalKey<FormState>();

  movetohome(BuildContext context)async{
    setState(() {
      changebutton=true;
      });
    await Future.delayed(Duration(seconds: 1));
    await Navigator.pushNamed(context, myRoutes.homeroute);
    setState(() {
      changebutton==false;
    });
  }

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    // ignore: unnecessary_new
    return new Scaffold(
      resizeToAvoidBottomInset: true,
      body: Material(
        color:Colors.white,
        child: SingleChildScrollView(
          child: Form(
            key: _formkey,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.only(top:20,left: 20),
                  child: Container(
                    child: Image.asset(login,height: size.height*0.3,)
                    ),
                  ),
                  loginWidget(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}