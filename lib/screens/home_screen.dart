import 'package:flutter/material.dart';

import '../core/ui_helper.dart';
import 'tabs/explore_tab.dart';
import 'tabs/home_tab.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen>
    with SingleTickerProviderStateMixin {
  late final AnimationController _animationController;
  late final Animation<Offset> _animation1;
  late final Animation<Offset> _animation2;
  late final Animation<Offset> _animation3;
  int _currentIndex = 0;

  @override
  void initState() {
    super.initState();
    _animationController = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 1500),
    );

    // _animation = Tween<double>(begin: 0, end: 1).animate(_animationController);
    _animation1 =
        Tween<Offset>(begin: const Offset(0.5, 0), end: const Offset(0, 0))
            .animate(
      CurvedAnimation(
        parent: _animationController,
        curve: const Interval(0, 0.8, curve: Curves.fastOutSlowIn),
      ),
    );
    _animation2 =
        Tween<Offset>(begin: const Offset(0.5, 0), end: const Offset(0, 0))
            .animate(
      CurvedAnimation(
        parent: _animationController,
        curve: const Interval(0.1, 0.9, curve: Curves.fastOutSlowIn),
      ),
    );

    _animation3 =
        Tween<Offset>(begin: const Offset(0.5, 0), end: const Offset(0, 0))
            .animate(
      CurvedAnimation(
        parent: _animationController,
        curve: const Interval(0.2, 1, curve: Curves.fastOutSlowIn),
      ),
    );

    _animationController.forward();
  }

  @override
  void dispose() {
    _animationController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final List<Widget> _tabs = [
      HomeTab(
        animation1: _animation1,
        animation2: _animation2,
        animation3: _animation3,
      ),
      ExploreTab()
    ];

    return Scaffold(
      body: SingleChildScrollView(
        child: _tabs[_currentIndex],
        // child: Column(
        //   crossAxisAlignment: CrossAxisAlignment.start,
        //   children: <Widget>[
        //     SizedBox(height: rh(75)),
        //     //TItle
        //     Hero(
        //       tag: 'tourve',
        //       child: Center(
        //         child: Text(
        //           'TOURVE',
        //           style: kLargeTitle.copyWith(
        //             color: Colors.black,
        //           ),
        //         ),
        //       ),
        //     ),

        //     SizedBox(height: rh(50)),
        //     //First Row

        //     //Cards
        //     CardWithTitle(
        //       title: 'Upcoming trips',
        //       animation: _animation1,
        //       tripsList: upcomingTrips,
        //     ),

        //     SizedBox(height: rh(30)),

        //     CardWithTitle(
        //       title: 'Explore by country',
        //       isCountry: true,
        //       animation: _animation2,
        //       tripsList: upcomingTrips,
        //     ),

        //     SizedBox(height: rh(30)),

        //     CardWithTitle(
        //       title: 'Explore by moods',
        //       animation: _animation3,
        //       tripsList: upcomingTrips,
        //     ),

        //     SizedBox(height: rh(40)),
        //   ],
        // ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        elevation: 0,
        currentIndex: _currentIndex,
        onTap: (value) {
          setState(() {
            _currentIndex = value;
          });
        },
        selectedItemColor: Colors.black,
        iconSize: rf(22),
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
            backgroundColor: Colors.red,
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.search),
            label: "Explore",
          ),
        ],
      ),
    );
  }
}
