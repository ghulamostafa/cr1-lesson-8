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
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  String _text = 'Blue';
  Color _color = Colors.blue;

  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(_counter.toString()),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text(
              'You have pushed the button this many times:',
            ),
            Text(
              '$_counter',
              style: TextStyle(
                fontSize: 60,
              ),
            ),
            Text(
              _text,
              style: TextStyle(fontSize: 60, color: _color),
            ),
            TextButton(
              onPressed: () {
                setState(
                  () {
                    _counter--;
                  },
                );
              },
              child: Text(
                'Decrease',
                style: TextStyle(fontSize: 35),
              ),
            ),
            TextButton(
              onPressed: () {
                setState(
                  () {
                    _text = 'Green';
                    _color = Colors.green;
                  },
                );
              },
              child: Text(
                'Green',
                style: TextStyle(fontSize: 35),
              ),
            ),
            TextButton(
              onPressed: () {
                setState(
                  () {
                    _text = 'Red';
                    _color = Colors.red;
                  },
                );
              },
              child: Text(
                'Red',
                style: TextStyle(fontSize: 35),
              ),
            ),
            TextButton(
              onPressed: () {
                setState(
                  () {
                    _text = 'Yellow';
                    _color = Colors.yellow;
                  },
                );
              },
              child: Text(
                'Yellow',
                style: TextStyle(fontSize: 35),
              ),
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: const Icon(Icons.add),
      ),
    );
  }
}
