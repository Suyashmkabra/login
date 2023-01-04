import 'package:flutter/material.dart';
import 'package:introduction_screen/introduction_screen.dart';
import 'package:kazatest/src/constants/images.dart';
import 'package:kazatest/src/constants/introstrings.dart';
import 'package:kazatest/src/routing/routes.dart';
import 'package:lottie/lottie.dart';

class intro extends StatelessWidget {
  const intro({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: IntroductionScreen(
        pages: [
          PageViewModel(
            title: page1_title,
            body: page1_body,
            image: Center(child: Lottie.asset(page1_lottie)),),


          PageViewModel(
            title: page2_title,
            body: page2_body,
            image: Center(child: Lottie.asset(page2_lottie)),),

          PageViewModel(
          title: page3_title,
          body: page3_body,
          image: Center(child: Lottie.asset(page3_lottie)),),
        
        ],
        skip: Text('Skip'),
        showSkipButton: true,

        done: Text('Done'),
        onDone: () {
          Navigator.pushNamed(context, myRoutes.welcomeroute);
        },
        next: Text('Next'),
        onChange: (value) {
          
        },
        dotsDecorator: DotsDecorator(
          size: const Size.square(10.0),
          activeSize: const Size(20.0, 10.0),
          activeColor: Theme.of(context).colorScheme.secondary,
          color: Colors.black26,
          spacing: const EdgeInsets.symmetric(horizontal: 3.0),
          activeShape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(25.0)
          ),
        ),
      )
    );
  }
}