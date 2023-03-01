import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const MyHomePage(title: 'Hello World'),
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
  //Percobaan 1 dan 2
  int _counter = 1;
  // Percobaan 3, Tugas, Latihan
  // int _conuter = 0;
  String _text = "Ganjil";

  void _incrementCounter() {
    setState(() {
      _counter++;

      // Percobaan 1 dan 2
      if(_counter>20){
        // _counter = 1;
        _counter = 0;
      }

      // Percobaan 2 - Menampilkan bilangan ganjil genap
      if(_counter%2 == 0) {
        _text = "Genap";
      }else{
        _text = "Ganjil";
      }

      // Percobaan 3 - Menampilkan bilangan ganjil
      _text = "Ganjil: ";
      for(int i=0; i<=_counter; i++){
        if(i%2 != 0) {
          _text += '${i}, ';
        }
      }

      // Latihan
      // if(_counter>20){
      //   _counter = 0;
      // }
      // _text = "Genap kelipatan 3 : ";
      // for(int i=1; i<=_counter; i++){
      //   if(i%3 == 0){
      //     if(i%2 == 0) {
      //       _text += '${i}, ';
      //     }
      //   }
      // }

      //Tugas - Menampilkan bilangan prima
      // if( _counter>50){
      //   _counter = 1;
      // }
      // _text = "Bilangan Prima : ";
      // for(int i=2; i<= _counter; i++){
      //   if ( _counter % i == 0){
      //     int a = 0;
      //     for (int j=1; j<=i; j++ ){
      //       if (i % j == 0){
      //         a++;
      //       }
      //     }
      //     if (a == 2){
      //       _text += '${i}, ';
      //     }
      //   }

    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text(widget.title),
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
              style: Theme.of(context).textTheme.headline4,
            ),
            Text(
              _text,
              style: Theme.of(context).textTheme.headline4,
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: const Icon(Icons.add),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}