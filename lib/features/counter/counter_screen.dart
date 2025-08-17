import 'package:flutter/material.dart';

class CounterScreen extends StatefulWidget {
  const CounterScreen({super.key});

  @override
  State<CounterScreen> createState() => _CounterScreenState();
}

class _CounterScreenState extends State<CounterScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Professional Counter')),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('0', style: TextStyle(fontSize: 100, fontWeight: FontWeight.bold), ),
            SizedBox(height: 10),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ElevatedButton(onPressed: () {}, child: Text('Reset')),
                SizedBox(width: 10),
                ElevatedButton(onPressed: () {}, child: Text('Add')),
                SizedBox(width: 10),
                ElevatedButton(onPressed: () {}, child: Text('Subtract')),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
