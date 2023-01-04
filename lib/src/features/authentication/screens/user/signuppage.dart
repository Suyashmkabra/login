import 'package:flutter/material.dart';
import 'package:kazatest/src/constants/images.dart';
import 'package:kazatest/src/routing/routes.dart';

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
    // ignore: unnecessary_new
    return new Scaffold(
      resizeToAvoidBottomInset: true,
      body: Material(
        color:Colors.white,
        child: SingleChildScrollView(
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(20),
                child: Container(
                  height: 300,
                  width: 300,
                  child: Image.asset(signin,fit: BoxFit.scaleDown,)
                  ),
              ),
              Padding(
                padding: const EdgeInsets.all(0.0),
                child: Text("WELCOME $name ",style: TextStyle(fontSize: 30,color: Color.fromARGB(255, 10, 57, 96)),),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 0,horizontal: 32),
                child: Column(
                  children: [
                     TextFormField(
                      decoration: InputDecoration(
                        labelText: 'Name',  
                        hintText: 'What should we call you?',
                      ),
                      textCapitalization: TextCapitalization.words,
                      onChanged: (value) {
                        name=value;
                        setState(() {});
                      },
                    ),
    
    
                    TextFormField(
                      decoration: InputDecoration(
                        labelText: 'User Id',  
                        hintText: 'Enter your email address',
                      ),
                      keyboardType: TextInputType.emailAddress,
                      onChanged: (value) {
                        userId=value;
                      },
                    ),
    
                    TextFormField(
                      decoration: InputDecoration(
                        labelText: 'phone no',  
                        hintText: 'Enter your Number',
                      ),
                      onChanged: (value) {
                        phno=value;
                      },
                    ),
    
                    TextFormField(
                      scrollPadding: EdgeInsets.only(bottom: 40),
                      obscureText: true,
                      decoration: InputDecoration(
                        labelText: 'Password',
                        hintText: 'Atleast 8 charecters',
                      ),
                      onChanged: (value) {
                        password=value;
                      },
                    ),
    
                    TextFormField(
                      scrollPadding: EdgeInsets.only(bottom: 40),
                      obscureText: true,
                      decoration: InputDecoration(
                        labelText: 'confirm Password',
                        hintText: 're enter the password',
                      ),
                      onChanged: (value) {
                        password2=value;
                      },
                    ),
    
                    SizedBox(
                      height: 20,
                    ),
    
                    InkWell(
    
                      onTap: () async{
                        // Navigator.pushNamed(context, myRoutes.homeroute)
                        setState(() {
                          changebutton=true;
                        });
                        await Future.delayed(Duration(seconds: 1));
                        await Navigator.pushNamed(context, myRoutes.homeroute);
                      },
                      child: AnimatedContainer(
                        height: 50,
                        width: 150,
                        duration: Duration(seconds: 1),
                        alignment: Alignment.center,
                        // ignore: sort_child_properties_last
                        child: changebutton
                        ?Icon(
                          Icons.done,
                          color: Colors.white,
                        ):
                         Text(
                          'Sign Up!',style: TextStyle(
                            color: Colors.white,fontWeight: FontWeight.bold
                            ),
                          ),
                        decoration: BoxDecoration(
                          color: Colors.deepPurpleAccent,
                          borderRadius: BorderRadius.circular(changebutton? 50 : 8),
                        ),
                      ),
                    )
    
                  //  ElevatedButton(child: Text('Login')
                  //  ,style: TextButton.styleFrom() ,
                  //  onPressed: () {
                  //   Navigator.pushNamed(context, myRoutes.homeroute);
                  //  },
                  //  )
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