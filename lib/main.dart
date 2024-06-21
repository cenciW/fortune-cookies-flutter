import 'dart:math';

import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.lightBlue),
        useMaterial3: true,
      ),
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  final String _currentFortune = "";

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  // int _counter = 0;
  String _currentFortune = "";

  final _fortuneList = [
    "You will find a new friend today.",
    "You will have a great day today.",
    "You will find a new opportunity today.",
    "You will have a great day today.",
    "You will find a new opportunity today.",
    "You will have a great day today 2.",
    "You will find a new opportunity today 2.",
    "You will have a great day today 2.",
  ];

  void _randomFortune() {
    var random = Random();
    int fortune = random.nextInt(_fortuneList.length);

    setState(() {
      _currentFortune = _fortuneList[fortune];
    });
  }

  // void _incrementCounter() {
  // setState(() {
  // _counter++;
  // });
  // }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          // backgroundColor: Theme.of(context).colorScheme.inversePrimary,
          // title: Text("Fortune Cookie Home Page")
          // ,
          ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Image.asset(
              'assets/images/fortune_cookie.png',
              width: 200,
              height: 200,
              fit: BoxFit.cover,
            ),
            Card(
              child: Padding(
                padding: const EdgeInsets.all(10.0),
                child: Text(
                  _currentFortune,
                  style: Theme.of(context).textTheme.titleMedium,
                ),
              ),
            ),
            //fixed bottom padding
            ElevatedButton(
                onPressed: _randomFortune, child: const Text("Get Fortune")),
          ],
        ),
      ),
      // floatingActionButton: FloatingActionButton(
      //   onPressed: _randomFortune,
      //   tooltip: 'Increment',
      //   child: const Icon(Icons.add),
      //   //Center the button on the screen
      // ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
