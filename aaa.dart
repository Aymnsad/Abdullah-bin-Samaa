import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'العداد الذكي',
      theme: ThemeData(primarySwatch: Colors.blue),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  void _decrementCounter() {
    setState(() {
      _counter--;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('العداد الذكي'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              'القيمة الحالية:',
              style: TextStyle(fontSize: 24),
            ),
            Text(
              '$_counter',
              style: TextStyle(fontSize: 48, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: <Widget>[
                FloatingActionButton(
                  onPressed: _incrementCounter,
                  child: Icon(Icons.add, size: 30),
                  backgroundColor: Colors.green,
                  heroTag: 'btn1',
                ),
                FloatingActionButton(
                  onPressed: _decrementCounter,
                  child: Icon(Icons.remove, size: 30),
                  backgroundColor: Colors.red,
                  heroTag: 'btn2',
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
