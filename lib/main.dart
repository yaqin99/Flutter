import 'dart:math';

import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
 
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Stateful Widget',
      theme: ThemeData(
        primaryColor: Colors.pinkAccent
        // colorScheme: ColorScheme.fromSwatch(
        //   primarySwatch: Colors.green
        // )
      ),      
      home: Scaffold(
        backgroundColor: Colors.pinkAccent,
        appBar: AppBar(
          title: Text('NEKOPOI V.2')
        ),
        body:IsiHalaman()
      )          
    );
  }
}

class IsiHalaman extends StatefulWidget {
  const IsiHalaman({
    Key key,
  }) : super(key: key);

  @override
  _IsiHalamanState createState() => _IsiHalamanState();
}

class _IsiHalamanState extends State<IsiHalaman> {
  int _counter = 0;
  final Random _random = Random();
  Color _color = Colors.white;

  void gantiBackground() {
    setState(() {
      _color = Color.fromARGB(255, _random.nextInt(256), 
      _random.nextInt(256), _random.nextInt(256));
    });
  }

  @override
  Widget build(BuildContext context) {
    return AnimatedContainer(
      duration: Duration(milliseconds : 800),
    constraints: const BoxConstraints.expand(),
    color: _color,
    child: Column(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: <Widget>[
        Text('$_counter', style: TextStyle(fontSize:50)
        ),
        RaisedButton(
          color: Colors.blue,
          onPressed: (){
            setState(() {
              _counter += 1;
            });
          },
          child: Text('Tambah 1'),
        ),
        RaisedButton(
          color: Colors.pinkAccent,
          onPressed: (){
            gantiBackground();
          }, 
          child: Text('Ubah Warna')
        )
      ]
    )
      );
  }
}