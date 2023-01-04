import 'package:flutter/material.dart';
import 'package:kazatest/src/constants/images.dart';
import 'package:kazatest/src/routing/routes.dart';

class loginpage extends StatefulWidget {

  @override
  State<loginpage> createState() => _loginpageState();
}

class _loginpageState extends State<loginpage> {
  bool changebutton=false;
  String userId ='';
  String password='';
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
    // ignore: unnecessary_new
    return new Scaffold(
      resizeToAvoidBottomInset: true,
      body: Material(
        color:Colors.white,
        child: SingleChildScrollView(
          child: Form(
            key: _formkey,
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.all(20),
                  child: Container(
                    height: 300,
                    width: 300,
                    child: Image.asset(login,fit: BoxFit.fitHeight)
                    ),
                ),
                Padding(
                  padding: const EdgeInsets.all(0.0),
                  child: Text("WELCOME",style: TextStyle(fontSize: 30,color: Colors.blue),),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 0,horizontal: 32),
                  child: Column(
                    children: [
                      TextFormField(
                        decoration: InputDecoration(
                          labelText: 'Username',  
                          hintText: 'Enter your name',
                        ),
                        keyboardType: TextInputType.text,
                        textCapitalization:TextCapitalization.words ,
                        onChanged: (value) {
                          userId=value;
                        },
                      ),
                      TextFormField(
                        obscureText: true,
                        decoration: InputDecoration(
                          labelText: 'Password',
                          hintText: 'Atleast 8 charecters',
                        ),
                        onChanged: (value) {
                          password=value;
                        },
                      ),
                      SizedBox(
                        height: 20,
                      ),
              
                      InkWell(
                        onTap:() => movetohome(context),
                        child: AnimatedContainer(
                          height: 50,
                          width: changebutton? 50: 150,
                          duration: Duration(seconds: 1),
                          alignment: Alignment.center,
                          // ignore: sort_child_properties_last
                          child: changebutton
                          ?Icon(
                            Icons.done,
                            color: Colors.white,
                          ):
                           Text(
                            'LOGIN',style: TextStyle(
                              color: Colors.white,fontWeight: FontWeight.bold
                              ),
                            ),
                          decoration: BoxDecoration(
                            color: Colors.deepPurpleAccent,
                            borderRadius: BorderRadius.circular(changebutton? 50 : 8),
                          ),
                        ),
                      )
                    ],
                  ),
                ),
                // ignore: prefer_const_constructors
                SizedBox(
                        height: 20,
                      ),
                      TextButton( 
                        child: Text('Dont have a account? sign up here'),
                        onPressed: (()
                         {
                            Navigator.pushNamed(context, myRoutes.registerroute);
                         }
                      )
                    )        
              ],
            ),
          ),
        ),
      ),
    );
  }
}