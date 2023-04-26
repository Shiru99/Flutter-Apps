import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 15, 15, 15),
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Expanded(
              flex: 6,
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  Expanded(
                    flex: 5,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.stretch,
                      children: [
                        Expanded(
                          flex: 57,
                          child: Container(
                            color: Colors.blue,
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text(
                                  '60%',
                                  style: TextStyle(fontSize: 24, color: Colors.white),
                                ),
                                Text(
                                  'First Widget',
                                  style: TextStyle(fontSize: 18, color: Colors.white),
                                ),
                              ],
                            ),
                          ),
                        ),
                        Expanded(
                          flex: 43,
                          child: Row(
                            children: [
                              Expanded(
                                flex: 33,
                                child: Container(
                                  color: Colors.orange,
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Text(
                                        '60%',
                                        style: TextStyle(fontSize: 24, color: Colors.white),
                                      ),
                                      Text(
                                        'First Widget',
                                        style: TextStyle(fontSize: 18, color: Colors.white),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                              Expanded(
                                flex: 33,
                                child: Container(
                                  color: Colors.cyan,
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Text(
                                        '60%',
                                        style: TextStyle(fontSize: 24, color: Colors.white),
                                      ),
                                      Text(
                                        'First Widget',
                                        style: TextStyle(fontSize: 18, color: Colors.white),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                              Expanded(
                                flex: 33,
                                child: Container(
                                  color: Colors.pink,
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Text(
                                        '60%',
                                        style: TextStyle(fontSize: 24, color: Colors.white),
                                      ),
                                      Text(
                                        'First Widget',
                                        style: TextStyle(fontSize: 18, color: Colors.white),
                                      ),
                                    ],
                                  ),
                                ),
                              )
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                  Expanded(
                    flex: 5,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.stretch,
                      children: [
                        Expanded(
                          flex: 20,
                          child: Container(
                            color: Colors.yellow,
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text(
                                  '40%',
                                  style: TextStyle(fontSize: 24, color: Colors.white),
                                ),
                                Text(
                                  'First Widget',
                                  style: TextStyle(fontSize: 18, color: Colors.white),
                                ),
                              ],
                            ),
                          ),
                        ),
                        Expanded(
                          flex: 80,
                          child: Row(
                            children: [
                              Expanded(
                                flex: 50,
                                child: Container(
                                  color: Colors.deepPurple,
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Text(
                                        '40%',
                                        style: TextStyle(fontSize: 24, color: Colors.white),
                                      ),
                                      Text(
                                        'First Widget',
                                        style: TextStyle(fontSize: 18, color: Colors.white),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                              Expanded(
                                flex: 50,
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.stretch,
                                  children: [
                                    Expanded(
                                      flex: 20,
                                      child: Container(
                                        color: Colors.lime,
                                        child: Column(
                                          mainAxisAlignment: MainAxisAlignment.center,
                                          children: [
                                            Text(
                                              '40%',
                                              style: TextStyle(fontSize: 24, color: Colors.white),
                                            ),
                                            Text(
                                              'First Widget',
                                              style: TextStyle(fontSize: 18, color: Colors.white),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ),
                                    Expanded(
                                      flex: 60,
                                      child: Container(
                                        color: Colors.teal,
                                        child: Column(
                                          mainAxisAlignment: MainAxisAlignment.center,
                                          children: [
                                            Text(
                                              '40%',
                                              style: TextStyle(fontSize: 24, color: Colors.white),
                                            ),
                                            Text(
                                              'First Widget',
                                              style: TextStyle(fontSize: 18, color: Colors.white),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ),
                                    Expanded(
                                      flex: 20,
                                      child: Container(
                                        color: Colors.indigo,
                                        child: Column(
                                          mainAxisAlignment: MainAxisAlignment.center,
                                          children: [
                                            Text(
                                              '40%',
                                              style: TextStyle(fontSize: 24, color: Colors.white),
                                            ),
                                            Text(
                                              'First Widget',
                                              style: TextStyle(fontSize: 18, color: Colors.white),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            Expanded(
              flex: 4,
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  Expanded(
                    flex: 58,
                    child: Container(
                      color: Colors.red,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            '60%',
                            style: TextStyle(fontSize: 24, color: Colors.white),
                          ),
                          Text(
                            'First Widget',
                            style: TextStyle(fontSize: 18, color: Colors.white),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Expanded(
                    flex: 42,
                    child: Container(
                      color: Colors.green,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            '40%',
                            style: TextStyle(fontSize: 24, color: Colors.white),
                          ),
                          Text(
                            'First Widget',
                            style: TextStyle(fontSize: 18, color: Colors.white),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}


/**
 * 
 *      534 -> 315 + 200
 * 
 */