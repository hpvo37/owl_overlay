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

import 'package:chero_key/Shared_Components/overlay.dart';
import 'package:chero_key/World_Screen/world_screen.dart';
import 'package:chero_key/src/start_screen.dart';
import 'package:chero_key/src/level_select_screen.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class MainGameScreen extends StatefulWidget {
  static const route = 'main_gaim_screen';

  MainGameScreen({Key key}) : super(key: key);

  @override
  _MainGameScreenState createState() => _MainGameScreenState();
}

class _MainGameScreenState extends State<MainGameScreen> {
  FirebaseFirestore firestore;
  mainGameScreenState() {
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
                    'assets/images/main_game_screen_assets/main game screen wooden bg.png'),
                fit: BoxFit.cover,
              ),
            ),
          ),

          //Rubik Cube
          Positioned(
            top: -52,
            right: -46,
            child: Container(
              width: 200,
              height: 200,
              child: Image(
                image: AssetImage(
                    'assets/images/main_game_screen_assets/rubik bg.png'),
                fit: BoxFit.contain,
              ),
            ),
          ),

          //Books top left
          Positioned(
            child: Container(
              width: 213,
              child: Image(
                image: AssetImage(
                    'assets/images/select_level_assets/select world books.png'),
                fit: BoxFit.contain,
              ),
            ),
          ),

          //Paper on the left side
          Positioned(
            top: 39,
            child: Container(
              width: 90,
              child: Image(
                image: AssetImage(
                    'assets/images/main_game_screen_assets/paper bg.png'),
                fit: BoxFit.contain,
              ),
            ),
          ),

          //Paper clip on the bottom left side
          Positioned(
            bottom: 95,
            left: -30,
            child: Container(
              width: 69,
              child: Image(
                image: AssetImage(
                    'assets/images/main_game_screen_assets/start screen clip2.png'),
                fit: BoxFit.contain,
              ),
            ),
          ),

          //Letter T
          Positioned(
            top: 83,
            right: -25,
            child: Container(
              width: 90,
              height: 90,
              child: Image(
                image: AssetImage('assets/images/select_level_assets/t bg.png'),
                fit: BoxFit.contain,
              ),
            ),
          ),

          //Book at bottom right bg
          Positioned(
            bottom: -5,
            right: -80,
            child: Container(
              width: 250,
              height: 250,
              child: Image(
                image: AssetImage(
                    'assets/images/main_game_screen_assets/book bg.png'),
                fit: BoxFit.contain,
              ),
            ),
          ),

          //Paper clip bottom right
          Positioned(
            bottom: -15,
            right: 8,
            child: Container(
              width: 75,
              height: 75,
              child: Image(
                image: AssetImage(
                    'assets/images/main_game_screen_assets/main game screen clip2.png'),
                fit: BoxFit.contain,
              ),
            ),
          ),

          //Background shadow
          Positioned(
            child: Container(
              child: Image(
                width: 900,
                image: AssetImage(
                    'assets/images/main_game_screen_assets/main game screen top shadow.png'),
                fit: BoxFit.fitWidth,
              ),
            ),
          ),

          //Main NoteBook
          Positioned(
            top: 2,
            left: -30,
            right: 30,
            bottom: 2,
            child: Container(
              child: Image(
                image: AssetImage(
                    'assets/images/main_game_screen_assets/game screen notebook.png'),
                fit: BoxFit.contain,
              ),
            ),
          ),

          //Game screen background on notebook
          Padding(
            padding: const EdgeInsets.only(right: 10, bottom: 15),
            child: Center(
              child: Container(
                width: 380,
                child: Image(
                  image: AssetImage(
                      'assets/images/main_game_screen_assets/game screen bottom.png'),
                  fit: BoxFit.contain,
                ),
              ),
            ),
          ),

          //Text on clip on top of the notebook
          Padding(
            padding: const EdgeInsets.only(top: 45, right: 17),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  child: Text(
                      'Text',
                  style: TextStyle(color: Colors.white),),
                ),
              ],
            ),
          ),

          //Text in the game screen background on notebook
          Padding(
            padding: const EdgeInsets.only(top: 140, right: 17),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  child: Text(
                    'Text',
                    style: TextStyle(color: Colors.white, fontSize: 18),),
                ),
              ],
            ),
          ),

          //Game screen counter at the bottom
          Padding(
            padding: const EdgeInsets.only(top: 210, right: 20),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      width: 30,
                      child: Image(
                        image: AssetImage(
                            'assets/images/main_game_screen_assets/game screen counter.png'),
                        fit: BoxFit.contain,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left:6),
                      child: Container(
                        width: 30,
                        child: Image(
                          image: AssetImage(
                              'assets/images/main_game_screen_assets/game screen counter.png'),
                          fit: BoxFit.contain,
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left:9),
                      child: Container(
                        width: 30,
                        child: Image(
                          image: AssetImage(
                              'assets/images/main_game_screen_assets/game screen counter.png'),
                          fit: BoxFit.contain,
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left:7),
                      child: Container(
                        width: 30,
                        child: Image(
                          image: AssetImage(
                              'assets/images/main_game_screen_assets/game screen counter.png'),
                          fit: BoxFit.contain,
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left:6),
                      child: Container(
                        width: 30,
                        child: Image(
                          image: AssetImage(
                              'assets/images/main_game_screen_assets/game screen counter.png'),
                          fit: BoxFit.contain,
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left:6),
                      child: Container(
                        width: 30,
                        child: Image(
                          image: AssetImage(
                              'assets/images/main_game_screen_assets/game screen counter.png'),
                          fit: BoxFit.contain,
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left:9),
                      child: Container(
                        width: 30,
                        child: Image(
                          image: AssetImage(
                              'assets/images/main_game_screen_assets/game screen counter.png'),
                          fit: BoxFit.contain,
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left:6),
                      child: Container(
                        width: 30,
                        child: Image(
                          image: AssetImage(
                              'assets/images/main_game_screen_assets/game screen counter.png'),
                          fit: BoxFit.contain,
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left:9),
                      child: Container(
                        width: 30,
                        child: Image(
                          image: AssetImage(
                              'assets/images/main_game_screen_assets/game screen counter.png'),
                          fit: BoxFit.contain,
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left:8),
                      child: Container(
                        width: 30,
                        child: Image(
                          image: AssetImage(
                              'assets/images/main_game_screen_assets/game screen counter.png'),
                          fit: BoxFit.contain,
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),

          //Red bookmark
          Padding(
            padding: const EdgeInsets.only(top: 95,left: 475),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  width: 27,
                  child: Image(
                    image: AssetImage(
                        'assets/images/main_game_screen_assets/bookmark exit.png'),
                    fit: BoxFit.contain,
                  ),
                ),
              ],
            ),
          ),

          //Red bookmark exit icon
          Padding(
            padding: const EdgeInsets.only(top: 88, left: 477),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                TextButton(
                  onPressed: () {
                    Navigator.pushNamed(context, MainGameScreen.route);
                  },
                  child: Container(
                    width: 18,
                    child: Image(
                      image: AssetImage(
                          'assets/images/main_game_screen_assets/exit icon.png'),
                      fit: BoxFit.contain,
                    ),
                  ),
                ),
              ],
            ),
          ),

          //Game screen right long green buttons
          Padding(
            padding: const EdgeInsets.only(top: 50),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    //Top right long green button
                    Padding(
                      padding: const EdgeInsets.only(left: 142,bottom: 6),
                      child: Column(
                        children: [
                          Stack(
                            alignment: Alignment.center,
                            children: [
                              Container(
                                width: 163,
                                child: Image(
                                  image: AssetImage(
                                      'assets/images/main_game_screen_assets/green long button.png'),
                                  fit: BoxFit.contain,
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(left: 15),
                                child: TextButton(
                                  onPressed: () {
                                    Navigator.pushNamed(
                                        context, LevelSelectScreen.route);
                                  },
                                  child: Padding(
                                    padding: const EdgeInsets.only(bottom: 5),
                                    child: Container(
                                      width: 125,
                                      child: Center(child: Text('Text')),
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                          //Bottom right long green button
                          Stack(
                            alignment: Alignment.center,
                            children: [
                              Container(
                                width: 163,
                                child: Image(
                                  image: AssetImage(
                                      'assets/images/main_game_screen_assets/green long button.png'),
                                  fit: BoxFit.contain,
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(left: 15),
                                child: TextButton(
                                  onPressed: () {
                                    Navigator.pushNamed(
                                        context, LevelSelectScreen.route);
                                  },
                                  child: Padding(
                                    padding: const EdgeInsets.only(bottom: 5),
                                    child: Container(
                                      width: 125,
                                      child: Center(child: Text('Text')),
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),

          //Game screen left long green buttons
          Padding(
            padding: const EdgeInsets.only(top: 50),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    //Top right long green button
                    Padding(
                      padding: const EdgeInsets.only(right: 183, bottom: 6),
                      child: Column(
                        children: [
                          Stack(
                            alignment: Alignment.center,
                            children: [
                              Container(
                                width: 163,
                                child: Image(
                                  image: AssetImage(
                                      'assets/images/main_game_screen_assets/green long button.png'),
                                  fit: BoxFit.contain,
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(left: 15),
                                child: TextButton(
                                  onPressed: () {
                                    Navigator.pushNamed(
                                        context, LevelSelectScreen.route);
                                  },
                                  child: Padding(
                                    padding: const EdgeInsets.only(bottom: 5),
                                    child: Container(
                                      width: 125,
                                      child: Center(child: Text('Text')),
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                          //Bottom right long green button
                          Stack(
                            alignment: Alignment.center,
                            children: [
                              Container(
                                width: 163,
                                child: Image(
                                  image: AssetImage(
                                      'assets/images/main_game_screen_assets/green long button.png'),
                                  fit: BoxFit.contain,
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(left: 15),
                                child: TextButton(
                                  onPressed: () {
                                    Navigator.pushNamed(
                                        context, LevelSelectScreen.route);
                                  },
                                  child: Padding(
                                    padding: const EdgeInsets.only(bottom: 5),
                                    child: Container(
                                      width: 125,
                                      child: Center(child: Text('Text')),
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
          TitleOverlay(),
        ],
      ),
    );
  }
}
