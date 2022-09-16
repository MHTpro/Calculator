import 'package:flutter/material.dart';
import 'package:math_expressions/math_expressions.dart';

main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MyCal(),
    );
  }
}














class MyCal extends StatefulWidget {
  const MyCal({Key? key}) : super(key: key);

  @override
  State<MyCal> createState() => _MyCalState();
}

class _MyCalState extends State<MyCal> {
  String equation = "0";
  String result = "0";
  String expression = "";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: SafeArea(
          child: Column(
            children: <Widget>[
              const SizedBox(
                height: 45.0,
              ),
              Container(
                alignment: Alignment.center,
                height: 200.0,
                width: 350.0,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(
                    30.0,
                  ),
                  boxShadow: <BoxShadow>[
                    BoxShadow(
                      color: Colors.grey.shade300,
                      offset: const Offset(0.0, 0.0),
                      spreadRadius: 1.0,
                      blurRadius: 20.0,
                    ),
                  ],
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    //up
                    Text(
                      equation,
                      style: TextStyle(
                        color: Colors.purple.shade800,
                        fontSize: 50.0,
                        fontWeight: FontWeight.bold,
                      ),
                    ),

                    //down
                    LimitedBox(
                      child: Text(
                        result,
                        style: TextStyle(
                          color: Colors.purple.shade800,
                          fontSize: 28.0,
                          fontWeight: FontWeight.bold,
                        ),
                        textDirection: TextDirection.rtl,
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 60.0,
              ),
              Stack(
                children: <Widget>[
                  Wrap(
                    crossAxisAlignment: WrapCrossAlignment.center,
                    spacing: 16.0,
                    runSpacing: 25.0,
                    children: <Widget>[
                      GestureDetector(
                        onTap: () {
                          onPress("Clear");
                        },
                        child: Container(
                          alignment: Alignment.center,
                          height: 70.0,
                          width: 170.0,
                          decoration: BoxDecoration(
                            color: Colors.redAccent.shade700,
                            borderRadius: BorderRadius.circular(
                              15.0,
                            ),
                            boxShadow: <BoxShadow>[
                              BoxShadow(
                                color: Colors.grey.shade400,
                                offset: const Offset(0.0, 0.0),
                                spreadRadius: 1.0,
                                blurRadius: 20.0,
                              ),
                            ],
                          ),
                          child: const Text(
                            "Clear",
                            style: TextStyle(
                              fontSize: 30.0,
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                      ),
                      //

                      calButtons(txt: "/"),
                      calButtons(txt: "Del"),
                      calButtons(txt: "7"),
                      calButtons(txt: "8"),
                      calButtons(txt: "9"),
                      calButtons(txt: "-"),
                      calButtons(txt: "4"),
                      calButtons(txt: "5"),
                      calButtons(txt: "6"),
                      const SizedBox(
                        height: 60.0,
                        width: 80.0,
                      ),
                      calButtons(txt: "1"),
                      calButtons(txt: "2"),
                      calButtons(txt: "3"),
                      const SizedBox(
                        height: 60.0,
                        width: 80.0,
                      ),
                      calButtons(txt: "0"),
                      calButtons(txt: "00"),
                      calButtons(txt: "."),
                      GestureDetector(
                        onTap: () {
                          onPress("=");
                        },
                        child: Container(
                          alignment: Alignment.center,
                          height: 60.0,
                          width: 80.0,
                          decoration: BoxDecoration(
                            color: Colors.blueAccent.shade700,
                            borderRadius: BorderRadius.circular(
                              15.0,
                            ),
                            boxShadow: <BoxShadow>[
                              BoxShadow(
                                color: Colors.grey.shade400,
                                offset: const Offset(0.0, 0.0),
                                spreadRadius: 1.0,
                                blurRadius: 20.0,
                              ),
                            ],
                          ),
                          child: const Text(
                            "=",
                            style: TextStyle(
                              fontSize: 30.0,
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                  Positioned(
                    bottom: 85.0,
                    right: 0.0,
                    child: GestureDetector(
                      onTap: () {
                        onPress("+");
                      },
                      child: Container(
                        alignment: Alignment.center,
                        height: 60.0,
                        width: 80.0,
                        decoration: BoxDecoration(
                          color: Colors.greenAccent.shade700,
                          borderRadius: BorderRadius.circular(
                            15.0,
                          ),
                          boxShadow: <BoxShadow>[
                            BoxShadow(
                              color: Colors.grey.shade400,
                              offset: const Offset(0.0, 0.0),
                              spreadRadius: 1.0,
                              blurRadius: 20.0,
                            ),
                          ],
                        ),
                        child: const Text(
                          "+",
                          style: TextStyle(
                            fontSize: 30.0,
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ),
                  ),
                  Positioned(
                    bottom: 167.0,
                    right: 0.0,
                    child: GestureDetector(
                      onTap: () {
                        onPress("*");
                      },
                      child: Container(
                        alignment: Alignment.center,
                        height: 60.0,
                        width: 80.0,
                        decoration: BoxDecoration(
                          color: Colors.yellowAccent.shade700,
                          borderRadius: BorderRadius.circular(
                            15.0,
                          ),
                          boxShadow: <BoxShadow>[
                            BoxShadow(
                              color: Colors.grey.shade400,
                              offset: const Offset(0.0, 0.0),
                              spreadRadius: 1.0,
                              blurRadius: 20.0,
                            ),
                          ],
                        ),
                        child: const Text(
                          "*",
                          style: TextStyle(
                            fontSize: 30.0,
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }

  onPress(String buttomText) {
    setState(
      () {
        //clear
        if (buttomText == "Clear") {
          equation = "0";
          result = "0";
        }
        //del
        else if (buttomText == "Del") {
          equation = equation.substring(0, equation.length - 1);
          if (equation.isEmpty) {
            equation = "0";
          }
        }
        //equal
        else if (buttomText == "=") {
          expression = equation;

          try {
            Parser p = Parser();
            Expression exp = p.parse(expression);
            ContextModel cm = ContextModel();
            result = "${exp.evaluate(EvaluationType.REAL, cm)}";
          } catch (e) {
            result = "اشتباه لطفا دوباره امتحان کنید";
            equation = "0";
          }
        }
        //Plus
        else {
          if (equation == "0") {
            equation = buttomText;
          } else {
            equation = equation + buttomText;
          }
        }
      },
    );
  }

  Widget calButtons({
    required String txt,
  }) {
    return GestureDetector(
      onTap: () {
        onPress(txt);
      },
      child: Container(
        alignment: Alignment.center,
        height: 60.0,
        width: 80.0,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(
            15.0,
          ),
          boxShadow: <BoxShadow>[
            BoxShadow(
              color: Colors.grey.shade300,
              offset: const Offset(0.0, 0.0),
              spreadRadius: 1.0,
              blurRadius: 20.0,
            ),
          ],
        ),
        child: Text(
          txt,
          style: TextStyle(
            fontSize: 30.0,
            color: Colors.grey.shade700,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );
  }
}
