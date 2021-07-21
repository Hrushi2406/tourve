import 'package:flutter/material.dart';
import 'package:tourve/core/navigation.dart';
import 'package:tourve/screens/tabs/home_tab.dart';

import '../constant.dart';

class DoneScreen extends StatefulWidget {
  const DoneScreen({Key? key}) : super(key: key);
  @override
  _DoneScreenState createState() => _DoneScreenState();
}

class _DoneScreenState extends State<DoneScreen> {
  @override
  void initState() {
    super.initState();
    Future.delayed(const Duration(milliseconds: 3500), () {
      // navigate(context, );
      // Navigator.pop(context);
    });
  }

  @override
  Widget build(BuildContext context) {
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
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                  fontSize: 18)),
        ],
      ),
    );
  }
}
