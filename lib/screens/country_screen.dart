import 'package:flutter/material.dart';
import 'package:tourve/model/country.dart';

import '../constant.dart';
import '../core/ui_helper.dart';
import '../model/trip.dart';
import 'tabs/home_tab.dart';

class CountryScreen extends StatefulWidget {
  const CountryScreen({required this.country, Key? key}) : super(key: key);
  final Country country;

  @override
  _CountryScreenState createState() => _CountryScreenState();
}

class _CountryScreenState extends State<CountryScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Hero(
            tag: widget.country.name,
            child: Container(
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage(widget.country.image),
                  fit: BoxFit.cover,
                ),
              ),
              child: Container(
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                    colors: [
                      Colors.black.withOpacity(0),
                      Colors.black.withOpacity(0.6),
                      Colors.black,
                    ],
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter,
                  ),
                ),
              ),
            ),
          ),
          Positioned(
            top: rh(50),
            left: 15,
            child: GestureDetector(
              onTap: () {
                Navigator.of(context).pop();
              },
              child: const Icon(
                Icons.arrow_back,
                color: Colors.white,
              ),
            ),
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: Padding(
              padding: EdgeInsets.symmetric(
                horizontal: 15.0,
                vertical: rh(50),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.end,
                children: <Widget>[
                  Center(
                    child: Text(
                      widget.country.name,
                      textAlign: TextAlign.center,
                      style: kLargeTitle.copyWith(
                        fontSize: rf(30),
                        letterSpacing: 20,
                        fontWeight: FontWeight.w900,
                      ),
                    ),
                  ),
                  SizedBox(height: rh(20)),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 15.0),
                    child: Center(
                      child: Text(
                        widget.country.description,
                        textAlign: TextAlign.center,
                        style: kQuoteStyle.copyWith(
                          fontSize: rf(14),
                          letterSpacing: 0,
                          height: 1.5,

                          // fontWeight: FontWeight.w900,
                        ),
                      ),
                    ),
                  ),
                  SizedBox(height: rh(50)),
                  SizedBox(
                    height: rh(175),
                    child: ListView.separated(
                      itemCount: widget.country.places.length,
                      scrollDirection: Axis.horizontal,
                      separatorBuilder: (BuildContext context, int index) {
                        return SizedBox(width: rw(20));
                      },
                      itemBuilder: (BuildContext context, int index) {
                        final Trip trip = widget.country.places[index];
                        return NormalCard(
                          isCountry: true,
                          trip: trip,
                          isTextWhite: true,
                        );
                      },
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
