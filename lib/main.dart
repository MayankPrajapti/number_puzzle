import 'dart:math';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(debugShowCheckedModeBanner: false, home: Puzzle()));
}

class Puzzle extends StatefulWidget {
  const Puzzle({Key? key}) : super(key: key);

  @override
  State<Puzzle> createState() => _PuzzleState();
}

class _PuzzleState extends State<Puzzle> {
  int mayank=0;
  String temp = "";
  String win = "";
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    btext.shuffle();
  }

  void press(int index) {
    setState(() {if(win!="Congratulation You Are Win..!!! 🎉") {
      if (index == 4) {
        if (btext[1] == "") {
          temp = btext[1];
          btext[1] = btext[4];
          btext[4] = temp;
        }
        if (btext[7] == "") {
          temp = btext[7];
          btext[7] = btext[4];
          btext[4] = temp;
        }
        if (btext[3] == "") {
          temp = btext[3];
          btext[3] = btext[4];
          btext[4] = temp;
        }
        if (btext[5] == "") {
          temp = btext[5];
          btext[5] = btext[4];
          btext[4] = temp;
        }
      }
      if (index == 0) {
        if (btext[1] == "") {
          temp = btext[1];
          btext[1] = btext[0];
          btext[0] = temp;
        }
        if (btext[3] == "") {
          temp = btext[3];
          btext[3] = btext[0];
          btext[0] = temp;
        }
      }
      if (index == 1) {
        if (btext[0] == "") {
          temp = btext[0];
          btext[0] = btext[1];
          btext[1] = temp;
        }
        if (btext[2] == "") {
          temp = btext[2];
          btext[2] = btext[1];
          btext[1] = temp;
        }
        if (btext[4] == "") {
          temp = btext[4];
          btext[4] = btext[1];
          btext[1] = temp;
        }
      }
      if (index == 2) {
        if (btext[1] == "") {
          temp = btext[1];
          btext[1] = btext[2];
          btext[2] = temp;
        }
        if (btext[5] == "") {
          temp = btext[5];
          btext[5] = btext[2];
          btext[2] = temp;
        }
      }
      if (index == 3) {
        if (btext[0] == "") {
          temp = btext[0];
          btext[0] = btext[3];
          btext[3] = temp;
        }
        if (btext[6] == "") {
          temp = btext[6];
          btext[6] = btext[3];
          btext[3] = temp;
        }
        if (btext[4] == "") {
          temp = btext[4];
          btext[4] = btext[3];
          btext[3] = temp;
        }
      }
      if (index == 5) {
        if (btext[2] == "") {
          temp = btext[2];
          btext[2] = btext[5];
          btext[5] = temp;
        }
        if (btext[4] == "") {
          temp = btext[4];
          btext[4] = btext[5];
          btext[5] = temp;
        }
        if (btext[8] == "") {
          temp = btext[8];
          btext[8] = btext[5];
          btext[5] = temp;
        }
      }
      if (index == 6) {
        if (btext[3] == "") {
          temp = btext[3];
          btext[3] = btext[6];
          btext[6] = temp;
        }
        if (btext[7] == "") {
          temp = btext[7];
          btext[7] = btext[6];
          btext[6] = temp;
        }
      }
      if (index == 7) {
        if (btext[4] == "") {
          temp = btext[4];
          btext[4] = btext[7];
          btext[7] = temp;
        }
        if (btext[6] == "") {
          temp = btext[6];
          btext[6] = btext[7];
          btext[7] = temp;
        }
        if (btext[8] == "") {
          temp = btext[8];
          btext[8] = btext[7];
          btext[7] = temp;
        }
      }
      if (index == 8) {
        if (btext[7] == "") {
          temp = btext[7];
          btext[7] = btext[8];
          btext[8] = temp;
        }
        if (btext[5] == "") {
          temp = btext[5];
          btext[5] = btext[8];
          btext[8] = temp;
        }
        if (btext[0] == "1" && btext[1] == "2" && btext[2] == "3" &&
            btext[3] == "4" && btext[4] == "5" && btext[5] == "6" &&
            btext[6] == "7" && btext[7] == "8" && btext[8] == "") {
          win = "Congratulation You Are Win..!!! 🎉";
        }
      }
    }
    });
  }

  List<String> btext = ["1", "2", "3", "4", "5", "6", "7", "", "8"];

  Widget button(int i) {
    return InkWell(
      onTap: () {
        press(i);

      },
      child: Container(
        height: 150,
        width: 124,
        alignment: Alignment.center,
        margin: EdgeInsets.all(5),
        color: btext[i] == "" ? Colors.black : Colors.white,
        child: Text(
          btext[i],
          style: TextStyle(fontSize: 50),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          centerTitle: true,
          backgroundColor: Colors.black,
          title: Text(
            "NumberPuzzle",
            style: TextStyle(color: Colors.white),
          ),
        ),
        body: Container(
          color: Colors.black,
          child: Column(
            children: [
              Expanded(
                flex: 2,
                child: Row(
                  children: [
                    Expanded(
                        child: Container(
                      color: Colors.black,
                      margin: EdgeInsets.all(10),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Expanded(
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [button(0), button(1), button(2)],
                            ),
                          ),
                          Expanded(
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [button(3), button(4), button(5)],
                            ),
                          ),
                          Expanded(
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [button(6), button(7), button(8)],
                            ),
                          ),
                        ],
                      ),
                    ))
                  ],
                ),
              ),
              Expanded(
                flex: 1,
                child: Row(
                  children: [
                    Expanded(
                        child: Container(
                      color: Colors.black,
                      child: Column(
                        children: [
                          Expanded(flex: 1,
                            child: Row(
                              children: [
                                Expanded(
                                  child: Container(alignment: Alignment.center,
                                    color: Colors.black,
                                    child: Text('$win',style: TextStyle(color: Colors.white,fontSize: 22),),
                                  ),
                                )
                              ],
                            ),
                          ),
                          Expanded(flex: 3,
                            child: Row(mainAxisAlignment: MainAxisAlignment.center,
                              children: [ElevatedButton(onPressed: () {
                                setState(() {
                                  win="";
                                  btext.shuffle();
                                  // btext.toSet()=(Random().nextInt(9));
                                  mayank=Random(1).nextInt(8);
                                });

                                // Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) {
                                //   return Puzzle();
                                // },));
                              }, child: Text("Restart",style: TextStyle(fontSize: 20),))
                              ],
                            ),
                          )
                        ],
                      ),
                    ))
                  ],
                ),
              )
            ],
          ),
        ));
  }
}
