import 'package:flutter/material.dart';

class homepage extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    double height = size.height;
    double width = size.width;
    final int day=2;
    final String name='suyash';
    return Scaffold(
      appBar: AppBar(
        title: Text('app'),
      ),
      body:Container(
        child: Center(
          child: Text('height $height widht $width '),
        )
      ),
      drawer: Drawer(),
    );
  }
}