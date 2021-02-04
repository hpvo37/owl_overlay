import 'package:flutter/material.dart';
import 'package:animated_text_kit/animated_text_kit.dart';

class TitleOverlay extends StatefulWidget {

  @override
  _TitleOverlayState createState() => _TitleOverlayState();
}

class _TitleOverlayState extends State<TitleOverlay> {
  bool onClick = false;

  @override
  Widget build(BuildContext context) {
    return  GestureDetector(
      onTap: () {
        setState(() {
          onClick =  true;
        });
      },
      child: onClick == true ? Container() :
      Stack(
        children: [
          Container(
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height,
            color: Colors.black87,
          ),
          Positioned(
            top: 70,
            left: 210,
            child: Container(
              height: 160,
              child: Image(
                image: AssetImage(
                    'assets/images/main_game_screen_assets/speech bubble.png'),
                fit: BoxFit.contain,
              ),
            ),
          ),
          Positioned(
          top: 110,
          left: 260,
          child: Container(
            width: 250.0,
            child: TyperAnimatedTextKit(
              speed: Duration(milliseconds: 50),
              text: [
                "At one time there was no fire.",
                "The animals were cold so they all gathered to discuss",
                "how they could keep from freezing in the winter.",
              ],
              textStyle: TextStyle(
                  color: Colors.black87,
                  fontSize: 20.0
              ),
              displayFullTextOnTap: true,
              textAlign: TextAlign.start,
            ),
          ),
          ),
          Positioned(
            top: 190,
            left: 40,
            child: Container(
              height: 210,
              child: Image(
                image: AssetImage(
                    'assets/images/main_game_screen_assets/owl.png'),
                fit: BoxFit.contain,
              ),
            ),
          ),
        ],
      ),
    );
  }
}