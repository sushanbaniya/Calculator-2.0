import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {
  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  String num1 = '';
  var op;
  String num2 = '';
  int result = 0;

  void calculate() {
    int intnum1 = int.parse(num1);
    int intnum2 = int.parse(num2);

    if(op == '+') {
      setState(() {
        result = intnum1 + intnum2;
      });
    } else if (op == '-') {
      setState(() {
        result = intnum1 - intnum2;
      });
    } else if (op == '/') {
      setState(() {
        result = intnum1 ~/ intnum2;
      });
    } else if (op == '*') {
      setState(() {
        result = intnum1 * intnum2;
      });
    }
    print(result);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'CALCULATOR',
          style: TextStyle(
            letterSpacing: 9,
            fontWeight: FontWeight.bold,
          ),
        ),
        centerTitle: true,
        toolbarHeight: 150,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.vertical(
            bottom: Radius.circular(90),
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Container(
              height: MediaQuery.of(context).size.height * 0.2,
              child: Center(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text('$num1 ${(op == null) ? '' : op} $num2'),
                      SizedBox(height: 18),
                      Text('$result',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            fontSize: 50,
                          )),
                    ],
                  )),
            ),
            Container(
                height: MediaQuery.of(context).size.height * 0.5,
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.black, width: 1),
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        IconButton(
                          icon: FaIcon(FontAwesomeIcons.one),
                          onPressed: () {
                            setState(() {
                              if (op == null) {
                                num1 = '$num1' + '1';
                              } else {
                                num2 = '$num2' + '1';
                              }
                            });
                            // print(num1);
                            // print(num2);
                            // num1.padRight(width)
                            // String name = 'John';
                            // print('$name  Jack');
                            // print(num1);
                          },
                        ),
                        IconButton(
                          icon: FaIcon(FontAwesomeIcons.two),
                          onPressed: () {
                            setState(() {
                              if (op == null) {
                                num1 = '$num1' + '2';
                              } else {
                                num2 = '$num2' + '2';
                              }
                            });
                          },
                        ),
                        IconButton(
                          icon: FaIcon(FontAwesomeIcons.three),
                          onPressed: () {
                            setState(() {
                              if (op == null) {
                                num1 = '$num1' + '3';
                              } else {
                                num2 = '$num2' + '3';
                              }
                            });
                          },
                        ),
                            IconButton(
                              icon: FaIcon(FontAwesomeIcons.four),
                              onPressed: () {
                                setState(() {
                                  if (op == null) {
                                num1 = '$num1' + '4';
                              } else {
                                num2 = '$num2' + '4';
                              }
                                });
                              },
                            ),
                          ],
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            IconButton(
                              icon: FaIcon(FontAwesomeIcons.five),
                              onPressed: () {
                                setState(() {
                                  if (op == null) {
                                num1 = '$num1' + '5';
                              } else {
                                num2 = '$num2' + '5';
                              }
                                });
                              },
                            ),
                            IconButton(
                              icon: FaIcon(FontAwesomeIcons.six),
                              onPressed: () {
                                setState(() {
                                  if (op == null) {
                                num1 = '$num1' + '6';
                              } else {
                                num2 = '$num2' + '6';
                              }
                                });
                              },
                            ),
                            IconButton(
                              icon: FaIcon(FontAwesomeIcons.seven),
                              onPressed: () {
                                setState(() {
                                  if (op == null) {
                                num1 = '$num1' + '7';
                              } else {
                                num2 = '$num2' + '7';
                              }
                                });
                              },
                            ),
                            IconButton(
                              icon: FaIcon(FontAwesomeIcons.eight),
                              onPressed: () {
                                setState(() {
                                  if (op == null) {
                                num1 = '$num1' + '8';
                              } else {
                                num2 = '$num2' + '8';
                              }
                                });
                              },
                            ),
                          ],
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            IconButton(
                              icon: FaIcon(FontAwesomeIcons.nine),
                              onPressed: () {
                                setState(() {
                                  if (op == null) {
                                num1 = '$num1' + '9';
                              } else {
                                num2 = '$num2' + '9';
                              }
                                });
                              },
                            ),
                            IconButton(
                              icon: FaIcon(FontAwesomeIcons.zero),
                              onPressed: () {
                                setState(() {
                                  if (op == null) {
                                num1 = '$num1' + '0';
                              } else {
                                num2 = '$num2' + '0';
                              }
                                });
                              },
                            ),
                            IconButton(
                              icon: FaIcon(FontAwesomeIcons.divide),
                              onPressed: () {
                                setState(() {
                                  op = '/';
                                });
                              },
                            ),
                            IconButton(
                              icon: FaIcon(FontAwesomeIcons.multiply),
                              onPressed: () {
                                setState(() {
                                   op = '*';
                                });
                              },
                            ),
                          ],
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            IconButton(
                              icon: FaIcon(FontAwesomeIcons.plus),
                              onPressed: () {
                                setState(() {
                                   op = '+';
                                });
                              },
                            ),
                            IconButton(
                              icon: FaIcon(FontAwesomeIcons.minus),
                              onPressed: () {
                                setState(() {
                                   op = '-';
                                });
                              },
                            ),
                            IconButton(
                              icon: FaIcon(FontAwesomeIcons.eraser),
                              onPressed: () {
                                setState(() {
                                   num1 = '';
                                   num2 = '';
                                   op = null;
                                   result = 0;
                                });
                              },
                            ),
                            IconButton(
                              icon: FaIcon(FontAwesomeIcons.equals, size: 40),
                             onPressed: () {
                                
                                calculate();
                              },
                            ),
                      ],
                    ),
                  ],
                ))
          ],
        ),
      ),
    );
  }
}
