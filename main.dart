import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter',
      home: MyHomePage(
        title: ('Flutter Customized'),
      ),
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
  int _counter = 0;
  void _decrementCounter(){
    setState(() {
      _counter--;
    });
  }
  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,

        title: Text(widget.title),
      ),


      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text('You have pushed the button this many times:'),
            Padding(padding: EdgeInsets.all(10.0),
              child:Text('$_counter',style: Theme.of(context).textTheme.headlineMedium),
            ),],
        ),
      ),

      floatingActionButton: Row(
        mainAxisAlignment: MainAxisAlignment.end,
        children:<Widget>[
          FloatingActionButton(
            onPressed: _decrementCounter,
            child: const Icon(Icons.exposure_minus_1, color: Colors.white),
            backgroundColor: Colors.blue,
          ),
          SizedBox(width: 1130.0),
          FloatingActionButton(
            onPressed: _incrementCounter,
            tooltip: 'Increment',
            child: const Icon(Icons.add, color: Colors.white),
            backgroundColor: Colors.blue,
          ),
        ],
      ),
    );
  }
}

