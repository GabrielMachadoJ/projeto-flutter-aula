import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Projeto Aula',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;
  int _secondCounter = 0;
  int _resultAdd = 0;
  int _resultSub = 0;
  int _resultMult = 0;
  double _resultDiv = 0;

  void _updateResults() {
    _resultAdd = _counter + _secondCounter;
    _resultSub = _counter - _secondCounter;
    _resultMult =
        (_counter * _secondCounter == -0.0) ? 0 : _counter * _secondCounter;
    _resultDiv = _secondCounter == 0 ? 0 : (_counter / _secondCounter);
  }

  void _incrementCounter() {
    setState(() {
      _counter++;
      _updateResults();
    });
  }

  void _decrementCounter() {
    setState(() {
      _counter--;
      _updateResults();
    });
  }

  void _incrementSecondCounter() {
    setState(() {
      _secondCounter++;
      _updateResults();
    });
  }

  void _decrementSecondCounter() {
    setState(() {
      _secondCounter--;
      _updateResults();
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Stack(
      children: <Widget>[
        Container(
          decoration: const BoxDecoration(
            image: DecorationImage(
              image: AssetImage("/imgs/bg.jpg"),
              fit: BoxFit.cover,
            ),
          ),
        ),
        Center(
          child: Container(
            decoration: BoxDecoration(
              color: const Color.fromARGB(213, 215, 209, 226),
              borderRadius: BorderRadius.circular(10.0),
            ),
            height: 500,
            width: 650,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Column(
                      children: [
                        Container(
                            margin: const EdgeInsets.fromLTRB(0, 0, 0, 30),
                            width: 100,
                            height: 50,
                            decoration: BoxDecoration(
                              color: Colors.transparent,
                              borderRadius: BorderRadius.circular(10.0),
                            ),
                            child: Center(
                              child: Text('$_counter',
                                  style: const TextStyle(
                                    fontSize: 45,
                                    color: Color.fromRGBO(30, 21, 61, 1),
                                  )),
                            )),
                        Container(
                            margin: const EdgeInsets.fromLTRB(0, 0, 0, 30),
                            width: 100,
                            height: 50,
                            decoration: BoxDecoration(
                              color: Colors.transparent,
                              borderRadius: BorderRadius.circular(10.0),
                            ),
                            child: Center(
                              child: Text('$_counter',
                                  style: const TextStyle(
                                    fontSize: 45,
                                    color: Color.fromRGBO(30, 21, 61, 1),
                                  )),
                            )),
                        Container(
                            margin: const EdgeInsets.fromLTRB(0, 0, 0, 30),
                            width: 100,
                            height: 50,
                            decoration: BoxDecoration(
                              color: Colors.transparent,
                              borderRadius: BorderRadius.circular(10.0),
                            ),
                            child: Center(
                              child: Text('$_counter',
                                  style: const TextStyle(
                                    fontSize: 45,
                                    color: Color.fromRGBO(30, 21, 61, 1),
                                  )),
                            )),
                        Container(
                            margin: const EdgeInsets.fromLTRB(0, 0, 0, 30),
                            width: 100,
                            height: 50,
                            decoration: BoxDecoration(
                              color: Colors.transparent,
                              borderRadius: BorderRadius.circular(10.0),
                            ),
                            child: Center(
                              child: Text('$_counter',
                                  style: const TextStyle(
                                    fontSize: 45,
                                    color: Color.fromRGBO(30, 21, 61, 1),
                                  )),
                            )),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            ElevatedButton(
                              onPressed: _incrementCounter,
                              style: ElevatedButton.styleFrom(
                                  minimumSize: const Size(40, 40),
                                  backgroundColor:
                                      const Color.fromARGB(209, 122, 86, 184)),
                              child: const Text('+'),
                            ),
                            const SizedBox(width: 16),
                            ElevatedButton(
                              onPressed: _decrementCounter,
                              style: ElevatedButton.styleFrom(
                                  minimumSize: const Size(40, 40),
                                  backgroundColor:
                                      const Color.fromARGB(209, 122, 86, 184)),
                              child: const Text('-'),
                            ),
                          ],
                        ),
                      ],
                    ),
                    const SizedBox(width: 30),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Container(
                            margin: const EdgeInsets.fromLTRB(0, 0, 0, 30),
                            width: 100,
                            height: 50,
                            decoration: BoxDecoration(
                              color: Colors.transparent,
                              borderRadius: BorderRadius.circular(10.0),
                            ),
                            child: const Center(
                              child: Text('+',
                                  style: TextStyle(
                                    fontSize: 45,
                                    color: Color.fromRGBO(30, 21, 61, 1),
                                  )),
                            )),
                        Container(
                            margin: const EdgeInsets.fromLTRB(0, 0, 0, 30),
                            width: 100,
                            height: 50,
                            decoration: BoxDecoration(
                              color: Colors.transparent,
                              borderRadius: BorderRadius.circular(10.0),
                            ),
                            child: const Center(
                              child: Text('-',
                                  style: TextStyle(
                                    fontSize: 45,
                                    color: Color.fromRGBO(30, 21, 61, 1),
                                  )),
                            )),
                        Container(
                            margin: const EdgeInsets.fromLTRB(0, 0, 0, 30),
                            width: 100,
                            height: 50,
                            decoration: BoxDecoration(
                              color: Colors.transparent,
                              borderRadius: BorderRadius.circular(10.0),
                            ),
                            child: const Center(
                              child: Text('*',
                                  style: TextStyle(
                                    fontSize: 45,
                                    color: Color.fromRGBO(30, 21, 61, 1),
                                  )),
                            )),
                        Container(
                            margin: const EdgeInsets.fromLTRB(0, 0, 0, 30),
                            width: 100,
                            height: 50,
                            decoration: BoxDecoration(
                              color: Colors.transparent,
                              borderRadius: BorderRadius.circular(10.0),
                            ),
                            child: const Center(
                              child: Text('/',
                                  style: TextStyle(
                                    fontSize: 45,
                                    color: Color.fromRGBO(30, 21, 61, 1),
                                  )),
                            )),
                        const SizedBox(height: 25),
                      ],
                    ),
                    const SizedBox(width: 30),
                    Column(
                      children: [
                        Container(
                            margin: const EdgeInsets.fromLTRB(0, 0, 0, 30),
                            width: 100,
                            height: 50,
                            decoration: BoxDecoration(
                              color: Colors.transparent,
                              borderRadius: BorderRadius.circular(10.0),
                            ),
                            child: Center(
                              child: Text('$_secondCounter',
                                  style: const TextStyle(
                                    fontSize: 45,
                                    color: Color.fromRGBO(30, 21, 61, 1),
                                  )),
                            )),
                        Container(
                            margin: const EdgeInsets.fromLTRB(0, 0, 0, 30),
                            width: 100,
                            height: 50,
                            decoration: BoxDecoration(
                              color: Colors.transparent,
                              borderRadius: BorderRadius.circular(10.0),
                            ),
                            child: Center(
                              child: Text('$_secondCounter',
                                  style: const TextStyle(
                                    fontSize: 45,
                                    color: Color.fromRGBO(30, 21, 61, 1),
                                  )),
                            )),
                        Container(
                            margin: const EdgeInsets.fromLTRB(0, 0, 0, 30),
                            width: 100,
                            height: 50,
                            decoration: BoxDecoration(
                              color: Colors.transparent,
                              borderRadius: BorderRadius.circular(10.0),
                            ),
                            child: Center(
                              child: Text('$_secondCounter',
                                  style: const TextStyle(
                                    fontSize: 45,
                                    color: Color.fromRGBO(30, 21, 61, 1),
                                  )),
                            )),
                        Container(
                            margin: const EdgeInsets.fromLTRB(0, 0, 0, 30),
                            width: 100,
                            height: 50,
                            decoration: BoxDecoration(
                              color: Colors.transparent,
                              borderRadius: BorderRadius.circular(10.0),
                            ),
                            child: Center(
                              child: Text('$_secondCounter',
                                  style: const TextStyle(
                                    fontSize: 45,
                                    color: Color.fromRGBO(30, 21, 61, 1),
                                  )),
                            )),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            ElevatedButton(
                              onPressed: _incrementSecondCounter,
                              style: ElevatedButton.styleFrom(
                                  minimumSize: const Size(40, 40),
                                  backgroundColor:
                                      const Color.fromARGB(209, 122, 86, 184)),
                              child: const Text('+'),
                            ),
                            const SizedBox(width: 16),
                            ElevatedButton(
                              onPressed: _decrementSecondCounter,
                              style: ElevatedButton.styleFrom(
                                  minimumSize: const Size(40, 40),
                                  backgroundColor:
                                      const Color.fromARGB(209, 122, 86, 184)),
                              child: const Text('-'),
                            ),
                          ],
                        ),
                      ],
                    ),
                    const SizedBox(width: 30),
                    Column(
                      children: [
                        Container(
                            margin: const EdgeInsets.fromLTRB(0, 0, 0, 30),
                            width: 100,
                            height: 50,
                            decoration: BoxDecoration(
                              color: Colors.transparent,
                              borderRadius: BorderRadius.circular(10.0),
                            ),
                            child: const Center(
                              child: Text('=',
                                  style: TextStyle(
                                    fontSize: 45,
                                    color: Color.fromRGBO(30, 21, 61, 1),
                                  )),
                            )),
                        Container(
                            margin: const EdgeInsets.fromLTRB(0, 0, 0, 30),
                            width: 100,
                            height: 50,
                            decoration: BoxDecoration(
                              color: Colors.transparent,
                              borderRadius: BorderRadius.circular(10.0),
                            ),
                            child: const Center(
                              child: Text('=',
                                  style: TextStyle(
                                    fontSize: 45,
                                    color: Color.fromRGBO(30, 21, 61, 1),
                                  )),
                            )),
                        Container(
                            margin: const EdgeInsets.fromLTRB(0, 0, 0, 30),
                            width: 100,
                            height: 50,
                            decoration: BoxDecoration(
                              color: Colors.transparent,
                              borderRadius: BorderRadius.circular(10.0),
                            ),
                            child: const Center(
                              child: Text('=',
                                  style: TextStyle(
                                    fontSize: 45,
                                    color: Color.fromRGBO(30, 21, 61, 1),
                                  )),
                            )),
                        Container(
                            margin: const EdgeInsets.fromLTRB(0, 0, 0, 30),
                            width: 100,
                            height: 50,
                            decoration: BoxDecoration(
                              color: Colors.transparent,
                              borderRadius: BorderRadius.circular(10.0),
                            ),
                            child: const Center(
                              child: Text('=',
                                  style: TextStyle(
                                    fontSize: 45,
                                    color: Color.fromRGBO(30, 21, 61, 1),
                                  )),
                            )),
                        const SizedBox(height: 25),
                      ],
                    ),
                    const SizedBox(width: 30),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Container(
                            margin: const EdgeInsets.fromLTRB(0, 0, 0, 30),
                            width: 100,
                            height: 50,
                            decoration: BoxDecoration(
                              color: Colors.transparent,
                              borderRadius: BorderRadius.circular(10.0),
                            ),
                            child: Center(
                              child: Text('$_resultAdd',
                                  style: const TextStyle(
                                    fontSize: 45,
                                    color: Color.fromRGBO(30, 21, 61, 1),
                                  )),
                            )),
                        Container(
                            margin: const EdgeInsets.fromLTRB(0, 0, 0, 30),
                            width: 100,
                            height: 50,
                            decoration: BoxDecoration(
                              color: Colors.transparent,
                              borderRadius: BorderRadius.circular(10.0),
                            ),
                            child: Center(
                              child: Text('$_resultSub',
                                  style: const TextStyle(
                                    fontSize: 45,
                                    color: Color.fromRGBO(30, 21, 61, 1),
                                  )),
                            )),
                        Container(
                            margin: const EdgeInsets.fromLTRB(0, 0, 0, 30),
                            width: 100,
                            height: 50,
                            decoration: BoxDecoration(
                              color: Colors.transparent,
                              borderRadius: BorderRadius.circular(10.0),
                            ),
                            child: Center(
                              child: Text('$_resultMult',
                                  style: const TextStyle(
                                    fontSize: 45,
                                    color: Color.fromRGBO(30, 21, 61, 1),
                                  )),
                            )),
                        Container(
                            margin: const EdgeInsets.fromLTRB(0, 0, 0, 30),
                            width: 100,
                            height: 50,
                            decoration: BoxDecoration(
                              color: Colors.transparent,
                              borderRadius: BorderRadius.circular(10.0),
                            ),
                            child: Center(
                              child: Text('$_resultDiv',
                                  style: const TextStyle(
                                    fontSize: 45,
                                    color: Color.fromRGBO(30, 21, 61, 1),
                                  )),
                            )),
                        const SizedBox(height: 25),
                      ],
                    ),
                  ],
                ),
              ],
            ),
          ),
        )
      ],
    ));
  }
}
