import 'dart:developer';

import 'package:flutter/material.dart';

import '../constant.dart';
import 'home_screen.dart';

class DoneScreen extends StatefulWidget {
  const DoneScreen({Key? key}) : super(key: key);
  @override
  _DoneScreenState createState() => _DoneScreenState();
}

class _DoneScreenState extends State<DoneScreen> {
  @override
  void initState() {
    super.initState();
  }

  Future<void> change() async {
    log('done');
    await Future.delayed(const Duration(milliseconds: 3500));
    Navigator.pushAndRemoveUntil(
        context,
        MaterialPageRoute(builder: (_) => const HomeScreen()),
        (route) => false);
    // navigate(context, const HomeScreen());
  }

  @override
  Widget build(BuildContext context) {
    change();
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Image.asset(
            "assets/images/confirm_animation.gif",
          ),
          const SizedBox(
            height: 42,
          ),
          Text("Your booking has been Confirm",
              style: kQuoteStyle.copyWith(
                letterSpacing: 0,
                color: Colors.black,
                fontWeight: FontWeight.bold,
                fontSize: 18,
              )),
        ],
      ),
    );
  }
}
