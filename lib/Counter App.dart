import 'dart:math';

import 'package:flutter/material.dart';

class CounterApp extends StatefulWidget {
  const CounterApp({super.key ,required this.title});
  final String title;

  @override
  State<CounterApp> createState() => _CounterAppState();
}

class _CounterAppState extends State<CounterApp> {

  int count = 0;
  int count2=0;
  
  @override
  Widget build(BuildContext context) {
    print('Build method called');

    return Scaffold(

      appBar: AppBar(title: Text(widget.title),
      backgroundColor: Colors.blueGrey,),

      floatingActionButton: FloatingActionButton(onPressed: (){
        setState(() {
          count ++;
          count2 += 2;
        });
      },
        child: Icon(Icons.add),),
      body: Center(

        child: Column(
         mainAxisSize: MainAxisSize.min,
          children: [

            const Text('You have pressed the button this many times '),
            Text('$count',style: TextStyle(fontSize: 100.0),),
            Text('$count2',style: TextStyle(fontSize: 100.0),)
          ],
        ),
      ),
    );
  }
}
