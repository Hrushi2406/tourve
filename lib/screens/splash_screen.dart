import 'dart:async';

import 'package:flutter/material.dart';

import '../constant.dart';
import '../core/ui_helper.dart';
import 'home_screen.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen>
    with SingleTickerProviderStateMixin {
  late final AnimationController _animationController;
  late final Animation<Color?> _colorAnimation;
  late final Animation<double> _nameAnimation;
  late final Animation<double> _quoteAnimation;

  @override
  void initState() {
    super.initState();
    _animationController = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 3000),
    );

    _colorAnimation = ColorTween(
      begin: Colors.black.withOpacity(0),
      end: Colors.black.withOpacity(0.6),
    ).animate(
      CurvedAnimation(
        parent: _animationController,
        curve: const Interval(0.1, 0.4, curve: Curves.easeInOut),
      ),
    );

    _nameAnimation = Tween<double>(begin: 0, end: 1).animate(
      CurvedAnimation(
        parent: _animationController,
        curve: const Interval(0.4, 0.7, curve: Curves.easeIn),
      ),
    );

    _quoteAnimation = Tween<double>(begin: 0, end: 1).animate(
      CurvedAnimation(
        parent: _animationController,
        curve: const Interval(0.8, 1, curve: Curves.easeIn),
      ),
    );

    _animationController.forward();

    _animationController.addStatusListener((status) async {
      if (status == AnimationStatus.completed) {
        await Future.delayed(const Duration(milliseconds: 1000));
        scheduleMicrotask(() {
          Navigator.of(context)
              .push(MaterialPageRoute(builder: (_) => const HomeScreen()));
        });
      }
    });
  }

  @override
  void dispose() {
    _animationController.removeStatusListener((_) {});
    _animationController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(5),
              image: const DecorationImage(
                image: AssetImage('assets/images/splash.png'),
                fit: BoxFit.cover,
              ),
            ),
            child: AnimatedBuilder(
              animation: _colorAnimation,
              builder: (BuildContext context, Widget? child) {
                return Container(
                  // color: Colors.black.withOpacity(0.6),
                  color: _colorAnimation.value,
                );
              },
            ),
          ),

          //Cetnered Text
          Center(
            child: FadeTransition(
              opacity: _nameAnimation,
              child: Hero(
                tag: 'tourve',
                child: Text(
                  'TOURVE',
                  style: kLargeTitle,
                ),
              ),
            ),
          ),

          //QUOTE
          Align(
            alignment: Alignment.bottomCenter,
            child: Padding(
              padding: EdgeInsets.only(bottom: rh(40)),
              child: FadeTransition(
                opacity: _quoteAnimation,
                child: Text(
                  'BE A TRAVELLER NOT A TOURIST',
                  style: kQuoteStyle,
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
