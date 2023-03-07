// import 'dart:html';

import 'package:calculator_app/constant.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:math_expressions/math_expressions.dart';

import 'components/my_buttons.dart';

class HomeScreen extends StatefulWidget {
  // const HomeScreen({Key? key}) : super(key: key);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

var userinput = '';
var answer = '';

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // resizeToAvoidBottomInset: faltse,
      backgroundColor: Colors.black,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10 ),
          child: Padding(
            padding: const EdgeInsets.only(top: 160),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.end,
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    Text(
                      userinput.toString(),
                      style: TextStyle(color: Colors.white, fontSize: 35),
                    ),
                    SizedBox(
                      height: 2,
                    ),
                    Text(
                      answer.toString(),
                      style: TextStyle(color: Colors.blue, fontSize: 35),
                    ),
                  ],
                ),
                Expanded(
              
                  child: Column(
                    children: [
                      Row(
                        children: [
                          mybutton(
                            title: 'AC',
                            onpress: () {
                              userinput = '';
                              answer = '';
                              setState(() {});
                            },
                          ),
                          mybutton(
                            title: '+/-',
                            onpress: () {
                              userinput = userinput + '+/-';
                              setState(() {});
                            },
                          ),
                          mybutton(
                            title: '%',
                            onpress: () {
                              userinput = userinput + '%';
                              setState(() {});
                            },
                          ),
                          mybutton(
                            title: '/',
                            onpress: () {
                              userinput = userinput + '/';
                              setState(() {});
                            },
                            color: Colors.blue.shade400,
                          ),
                        ],
                      ),
                      Row(
                        children: [
                          mybutton(
                            title: '7',
                            onpress: () {
                              userinput = userinput + '7';
                              setState(() {});
                            },
                          ),
                          mybutton(
                            title: '8',
                            onpress: () {
                              userinput = userinput + '8';
                              setState(() {});
                            },
                          ),
                          mybutton(
                            title: '9',
                            onpress: () {
                              userinput = userinput + '9';
                              setState(() {});
                            },
                          ),
                          mybutton(
                            title: 'x',
                            onpress: () {
                              userinput = userinput + 'x';
                              setState(() {});
                            },
                            color: Colors.blue.shade400,
                          ),
                        ],
                      ),
                      Row(
                        children: [
                          mybutton(
                            title: '4',
                            onpress: () {
                              userinput = userinput + '4';
                              setState(() {});
                            },
                          ),
                          mybutton(
                            title: '5',
                            onpress: () {
                              userinput = userinput + '5';
                              setState(() {});
                            },
                          ),
                          mybutton(
                            title: '6',
                            onpress: () {
                              userinput = userinput + '6';
                              setState(() {});
                            },
                          ),
                          mybutton(
                            title: '+',
                            onpress: () {
                              userinput = userinput + '+';
                              setState(() {});
                            },
                            color: Colors.blue.shade400,
                          ),
                        ],
                      ),
                      Row(
                        children: [
                          mybutton(
                            title: '1',
                            onpress: () {
                              userinput = userinput + '1';
                              setState(() {});
                            },
                          ),
                          mybutton(
                            title: '2',
                            onpress: () {
                              userinput = userinput + '2';
                              setState(() {});
                            },
                          ),
                          mybutton(
                            title: '3',
                            onpress: () {
                              userinput = userinput + '3';
                              setState(() {});
                            },
                          ),
                          mybutton(
                            title: '-',
                            onpress: () {
                              userinput = userinput + '-';
                              setState(() {});
                            },
                            color: Colors.blue.shade400,
                          ),
                        ],
                      ),
                      Row(
                        children: [
                          mybutton(
                            title: '0',
                            onpress: () {
                              userinput = userinput + '0';
                              setState(() {});
                            },
                          ),
                          mybutton(
                            title: '.',
                            onpress: () {
                              userinput = userinput + '.';
                              setState(() {});
                            },
                          ),
                          mybutton(
                            title: 'DEL',
                            onpress: () {
                              userinput =
                                  userinput.substring(0, userinput.length - 1);
                              setState(() {});
                            },
                          ),
                          mybutton(
                            title: '=',
                            onpress: () {
                              equalpress();
                              setState(() {});
                            },
                            color: Colors.blue.shade400,
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  void equalpress() {
    String finaluserinput = userinput.replaceAll('x', '*');
    Parser p = Parser();
    Expression expression = p.parse(finaluserinput);
    ContextModel contextModel = ContextModel();

    double eval = expression.evaluate(EvaluationType.REAL, contextModel);
    answer = eval.toString();
  }
}
