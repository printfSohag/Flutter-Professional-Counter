import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class CounterScreen extends StatefulWidget {

  const CounterScreen({super.key});


  @override
  State<CounterScreen> createState() => _CounterScreenState();
}

class _CounterScreenState extends State<CounterScreen> {

  int _counter = 0;

  @override
  void initState() {
    super.initState();
    _loadCounterState();
  }


  Future<void> _loadCounterState() async{
    final prefs = await SharedPreferences.getInstance();
    setState(() {
      _counter = prefs.getInt('sohag') ?? 0;
    });
  }

  Future<void> _saveCounterState() async{
    final prefs = await SharedPreferences.getInstance();
    await prefs.setInt('sohag', _counter);
    print(_counter);
  }

  void _increment(){
    setState((){
      _counter++;
    });
    _saveCounterState();
  }
  void _decrement(){
    setState((){
      _counter > 0 ? _counter-- : null;
    });
    _saveCounterState();
  }
  void _reset(){
    setState((){
      _counter = 0;
    });
    _saveCounterState();
  }
  void _doubleButton(){
    setState((){
      if(_counter > 0){
        _counter *= 2;
      }
    });
    _saveCounterState();
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
