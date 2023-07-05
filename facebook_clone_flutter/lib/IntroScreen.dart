import 'package:flutter/material.dart';
import 'package:introduction_screen/introduction_screen.dart';

class IntroScreen extends StatelessWidget {
  final String email;

  const IntroScreen({Key? key, required this.email}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: IntroductionScreen(
        scrollPhysics: BouncingScrollPhysics(),
        pages: [
          PageViewModel(
            titleWidget: Text(
              "Connect, Share, and Explore",
              style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
            ),
            body:
            "Join Facebook, the ultimate social networking platform, where you can connect with friends, share your life's moments, and explore a world of endless possibilities.",
            image: Image.asset(
              "assets/b_1.gif",
              height: 400,
              width: 400,
            ),
          ),
          PageViewModel(
            titleWidget: const Text(
              "Stay Informed and Engaged with Trending Topics",
              style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
            ),
            body:
            "Stay up-to-date with personalized news, engage in conversations, and explore trending topics on Facebook, your go-to destination for staying informed and connected.",
            image: Image.asset(
              "assets/22.gif",
              height: 400,
              width: 400,
            ),
          ),
          PageViewModel(
            titleWidget: Text(
              "Capture and Share Life's Highlights",
              style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
            ),
            body:
            "Unleash your creativity, capture and share stunning visuals, and be inspired by a vibrant community on Facebook, the platform that celebrates and showcases life's highlights.",
            image: Image.asset(
              "assets/33.gif",
              height: 400,
              width: 400,
            ),
          )
        ],
        onDone: () {Navigator.pushNamed(context, '/tabNavigation',arguments: {'email': email},);},
        onSkip: () {
           Navigator.pushNamed(context, '/tabNavigation',arguments: {'email': email},);
         },
        showSkipButton: true,

        skip: const Text(
          "Skip",
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 18,
            color: Color(0xFF6C63FF),
          ),
        ),
        next: const Icon(
          Icons.arrow_forward,
          color: Color(0xFF6C63FF),
        ),
        done: const Text(
          "Done",
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 18,
            color: Color(0xFF6C63FF),
          ),
        ),
        dotsDecorator: DotsDecorator(
            size: Size.square(10.0),
            activeSize: Size(20.0, 10.0),
            color: Colors.black26,
            activeColor: Color(0xFF6C63FF),
            spacing: EdgeInsets.symmetric(horizontal: 3.0),
            activeShape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(25.0),
            )),
      ),
    );
  }
}
