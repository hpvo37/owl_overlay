import 'package:flutter/material.dart';

class WorldScreen extends StatelessWidget {
  static const String route = 'world_screen';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //backgroundColor: Colors.blue,
      body: Stack(
        children: <Widget>[
          Container(
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height,
            child: Image.asset(
              'assets/images/wooden bg.png',
              fit: BoxFit.cover,
            ),
          ),
          Positioned(
            top: 10.0,
            left: 10.0,
            child: Container(
              width: 90,
              height: 90,
              color: Colors.green,
            ),
          ),
          Container(
            width: 80,
            height: 80,
            color: Colors.blue,
          ),
          //Placer('assets/images/select_world_assets/back arrow.png', 20.0, 20.0)
        ],
      ),
    );
  }
}

// class Placer extends StatelessWidget {
//   Placer({this.name, this.top, this.bottom, this.left, this.right});
//
//   final String name;
//   final double top;
//   final double bottom;
//   final double left;
//   final double right;
//
//   @override
//   Widget build(BuildContext context) {
//     return Positioned(
//       child: Container(
//         width: 90,
//         height: 90,
//       ),
//
//       top: top,
//       bottom: bottom,
//       left: left,
//       right: right,
//     );
//   }
// }
