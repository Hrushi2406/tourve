import 'package:flutter/material.dart';

class DoneScreen extends StatefulWidget {
  const DoneScreen({Key? key}) : super(key: key);
  @override
  _DoneScreenState createState() => _DoneScreenState();
}

class _DoneScreenState extends State<DoneScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          const Icon(Icons.done),
        ],
      ),
    );
  }
}
