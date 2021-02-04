// Copyright 2020 Google LLC
//
// Licensed under the Apache License, Version 2.0 (the "License");
// you may not use this file except in compliance with the License.
// You may obtain a copy of the License at
//
//      http://www.apache.org/licenses/LICENSE-2.0
//
// Unless required by applicable law or agreed to in writing, software
// distributed under the License is distributed on an "AS IS" BASIS,
// WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
// See the License for the specific language governing permissions and
// limitations under the License.

import 'dart:async';

import 'package:chero_key/World_Screen/world_screen.dart';
import 'package:chero_key/src/start_screen.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class LevelSelectScreen extends StatefulWidget {
  static const route = 'level_select_screen';

  LevelSelectScreen({Key key}) : super(key: key);

  @override
  _LevelSelectScreenState createState() => _LevelSelectScreenState();
}

class _LevelSelectScreenState extends State<LevelSelectScreen> {
  FirebaseFirestore firestore;
  levelSelectScreenState() {
    firestore = FirebaseFirestore.instance;
  }

  @override
  Widget build(BuildContext context) {
    SystemChrome.setEnabledSystemUIOverlays([]);
    return Scaffold(
      resizeToAvoidBottomPadding: false,
      body: Stack(
        children: <Widget>[

          //Background
          Container(
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage(
                    'assets/images/wooden bg.png'),
                fit: BoxFit.cover,
              ),
            ),
          ),

          //Rubik Cube
          Positioned(
            top: -52,
            right: -52,
            child: Container(
              width: 195,
              height: 176,
              child: Image(
                image: AssetImage(
                    'assets/images/main_game_screen_assets/rubik bg.png'),
                fit: BoxFit.contain,
              ),
            ),
          ),

          //Books top left
          Positioned(
            top: 0,
            left: 0,
            child: Container(
              width: 227,
              height: 92,
              child: Image(
                image: AssetImage(
                    'assets/images/select_level_assets/select world books.png'),
                fit: BoxFit.contain,
              ),
            ),
          ),

          //Paper Clip on left side bg
          Positioned(
            top: 80,
            left: -35,
            child: Container(
              width: 70,
              height: 60,
              child: Image(
                image: AssetImage(
                    'assets/images/main_game_screen_assets/start screen clip2.png'),
                fit: BoxFit.contain,
              ),
            ),
          ),

          //Eraser
          Positioned(
            top: 235,
            left: 0,
            child: Container(
              width: 60,
              height: 71,
              child: Image(
                image: AssetImage(
                    'assets/images/select_world_assets/eraser.png'),
                fit: BoxFit.contain,
              ),
            ),
          ),

          //Letter T
          Positioned(
            top: 120,
            right: -3,
            child: Container(
              width: 85,
              height: 82,
              child: Image(
                image: AssetImage(
                    'assets/images/select_level_assets/t bg.png'),
                fit: BoxFit.contain,
              ),
            ),
          ),

          //Letter A
          Positioned(
            top: 200,
            right: -10,
            child: Container(
              width: 88,
              height: 74,
              child: Image(
                image: AssetImage(
                    'assets/images/select_level_assets/a bg.png'),
                fit: BoxFit.contain,
              ),
            ),
          ),

          //Book at bottom right bg
          Positioned(
            bottom: 0,
            right: 0,
            child: Container(
              width: 101,
              height: 128,
              child: Image(
                image: AssetImage(
                    'assets/images/select_level_assets/book bg.png'),
                fit: BoxFit.contain,
              ),
            ),
          ),

          //Main Book
          Positioned(
            top: 18,
            bottom: 18,
            left: -12,
            right: 12,
            child: Container(
              width: 1755,
              height: 1015,
              child: Image(
                image: AssetImage(
                    'assets/images/select_level_assets/category book full.png'),
                fit: BoxFit.contain,
              ),
            ),
          ),

          //Paper Clip on main book near bottom
          Positioned(
            top: 280,
            bottom: 90,
            left: -250,
            right: 250,
            child: Container(
              width: 202,
              height: 106,
              child: Image(
                image: AssetImage(
                    'assets/images/select_level_assets/category clip on book.png'),
                fit: BoxFit.contain,
              ),
            ),
          ),

          //Category Paper
          Positioned(
            top: 35,
            bottom: 127,
            left: -138,
            right: 138,
            child: Container(
              width: 559,
              height: 673,
              child: Image(
                image: AssetImage(
                    'assets/images/select_level_assets/catogory paper.png'),
                fit: BoxFit.contain,
              ),
            ),
          ),

          //Category Color on category paper
          Positioned(
            top: 58,
            bottom: 167,
            left: -138,
            right: 138,
            child: Container(
              width: 386,
              height: 449,
              child: Image(
                image: AssetImage(
                    'assets/images/select_level_assets/category color3.png'),
                fit: BoxFit.contain,
              ),
            ),
          ),

          //Category Picture on category color
          Positioned(
            top: 90,
            bottom: 205,
            left: -138,
            right: 138,
            child: Container(
              width: 290,
              height: 401,
              child: Image(
                image: AssetImage(
                    'assets/images/select_world_assets/category4.png'),
                fit: BoxFit.contain,
              ),
            ),
          ),

          //Paper Clip on category color + paper
          Positioned(
            top: 21,
            bottom: 328,
            left: -115,
            right: 115,
            child: Container(
              width: 84,
              height: 169,
              child: Image(
                image: AssetImage(
                    'assets/images/select_level_assets/category clip on paper.png'),
                fit: BoxFit.contain,
              ),
            ),
          ),

          //Red Bookmark
          Positioned(
            top: 333,
            bottom: 10,
            left: -93,
            right: 93,
            child: Container(
              width: 295,
              height: 179,
              child: Image(
                image: AssetImage(
                    'assets/images/select_level_assets/bookmark red.png'),
                fit: BoxFit.contain,
              ),
            ),
          ),

          //Orange Bookmark
          Positioned(
            top: 338,
            bottom: 10,
            left: -170,
            right: 170,
            child: Container(
              width: 290,
              height: 161,
              child: Image(
                image: AssetImage(
                    'assets/images/select_level_assets/bookmark category.png'),
                fit: BoxFit.contain,
              ),
            ),
          ),

          //Home Button on red bookmark
          Positioned(
            top: 334,
            bottom: 31,
            left: 314,
            right: 494,
            child: FlatButton(
              onPressed: () {
                Navigator.pushNamed(context, StartScreen.route);
              },
              child: Container(
                width: 89,
                height: 76,
                child: Image(
                  image: AssetImage(
                      'assets/images/select_level_assets/home button.png'),
                  fit: BoxFit.contain,
                ),
              ),
            ),
          ),

          //Back Arrow Button on orange bookmark
          Positioned(
            top: 340,
            bottom: 30,
            left: 231,
            right: 577,
            child: FlatButton(
              onPressed: () {
                Navigator.pushNamed(context, WorldScreen.route);
              },
              child: Container(
                width: 127,
                height: 92,
                child: Image(
                  image: AssetImage(
                      'assets/images/select_level_assets/back arrow.png'),
                  fit: BoxFit.contain,
                ),
              ),
            ),
          ),

          //Level 1
          Positioned(
            top: 0,
            bottom: 0,
            left: 0,
            right: 0,
            child: FlatButton(
              onPressed: () {
                Navigator.pushNamed(context, StartScreen.route);
              },
              child: Container(
                width: 79,
                height: 105,
                child: Image(
                  image: AssetImage(
                      'assets/images/select_level_assets/level for level selection.png'),
                  fit: BoxFit.contain,
                ),
              ),
            ),
          ),

        ],
      ),
    );
  }
}
