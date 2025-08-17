import 'package:flutter/material.dart';

class CounterScreen extends StatefulWidget {

  const CounterScreen({super.key});


  @override
  State<CounterScreen> createState() => _CounterScreenState();
}

class _CounterScreenState extends State<CounterScreen> {

  int _counter = 0;
  void _increment(){
    setState((){
      _counter++;
    });
  }
  void _decrement(){
    setState((){
      _counter > 0 ? _counter-- : null;
    });
  }
  void _reset(){
    setState((){
      _counter = 0;
    });
  }
  void _doubleButton(){
    setState((){
      if(_counter > 0){
        _counter *= 2;
      }
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Professional Counter')),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('$_counter', style: TextStyle(fontSize: 100, fontWeight: FontWeight.bold), ),
            SizedBox(height: 10),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ElevatedButton(onPressed: () {
                  _reset();
                }, child: Text('Reset')),
                SizedBox(width: 10),
                ElevatedButton(onPressed: () {
                  _increment();
                }, child: Text('Add')),
                SizedBox(width: 10),
                ElevatedButton(onPressed: () {
                  _decrement();
                }, child: Text('Subtract')),
                SizedBox(width: 10),
                ElevatedButton(onPressed: () {
                  _doubleButton();
                }, child: Text('Double')),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
