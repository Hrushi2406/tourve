import 'package:flutter/material.dart';
import 'package:tourve/screens/trip_screen.dart';

import '../../constant.dart';
import '../../core/ui_helper.dart';
import '../../model/data.dart';
import '../../model/trip.dart';

class HomeTab extends StatefulWidget {
  const HomeTab({
    Key? key,
    required this.animation1,
    required this.animation2,
    required this.animation3,
  }) : super(key: key);

  final Animation<Offset> animation1;
  final Animation<Offset> animation2;
  final Animation<Offset> animation3;

  @override
  _HomeTabState createState() => _HomeTabState();
}

class _HomeTabState extends State<HomeTab> {
  @override
  Widget build(BuildContext context) {
    debugPrint('Build home');

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        SizedBox(height: rh(75)),
        //TItle
        Hero(
          tag: 'tourve',
          child: Center(
            child: Text(
              'TOURVE',
              style: kLargeTitle.copyWith(
                color: Colors.black,
              ),
            ),
          ),
        ),

        SizedBox(height: rh(50)),
        //First Row

        //Cards
        CardWithTitle(
          title: 'Upcoming trips',
          animation: widget.animation1,
          tripsList: upcomingTrips,
        ),

        SizedBox(height: rh(30)),

        CardWithTitle(
          title: 'Explore by country',
          isCountry: true,
          animation: widget.animation2,
          tripsList: countryTrips,
        ),

        SizedBox(height: rh(30)),

        CardWithTitle(
          title: 'Explore by moods',
          isCountry: true,
          animation: widget.animation3,
          tripsList: moodTrips,
        ),

        SizedBox(height: rh(40)),
      ],
    );
  }
}

class CardWithTitle extends StatelessWidget {
  final String title;
  final List<Trip> tripsList;
  final bool isCountry;
  final Animation<Offset> animation;
  const CardWithTitle({
    Key? key,
    required this.title,
    required this.tripsList,
    required this.animation,
    this.isCountry = false,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SlideTransition(
      position: animation,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15.0),
            child: Text(
              title,
              style: TextStyle(
                fontSize: rf(18),
                fontWeight: FontWeight.w800,
              ),
            ),
          ),
          SizedBox(height: rh(10)),
          Container(
            height: isCountry ? rh(175) : rh(195),
            // color: Colors.red,
            padding: const EdgeInsets.symmetric(horizontal: 15.0),
            child: ListView.separated(
              itemCount: tripsList.length,
              scrollDirection: Axis.horizontal,
              separatorBuilder: (BuildContext context, int index) {
                return SizedBox(width: rw(20));
              },
              itemBuilder: (BuildContext context, int index) {
                final trip = tripsList[index];
                return NormalCard(
                  trip: trip,
                  isCountry: isCountry,
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}

class NormalCard extends StatelessWidget {
  const NormalCard({
    Key? key,
    required this.isCountry,
    required this.trip,
    this.isTextWhite = false,
  }) : super(key: key);

  final Trip trip;
  final bool isCountry;
  final bool isTextWhite;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.of(context)
            .push(MaterialPageRoute(builder: (_) => TripScreen(trip: trip)));
      },
      child: SizedBox(
        width: rw(254),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              width: rw(254),
              height: rh(147),
              decoration: BoxDecoration(
                image: DecorationImage(
                  // FadeInImage.assetNetwork(placeholder: trip.image, image: trip.image)
                  image: AssetImage(trip.image),
                  fit: BoxFit.cover,
                ),
              ),
            ),
            const Spacer(),
            // SizedBox(height: rh(10)),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Text(
                  trip.title,
                  style: TextStyle(
                    fontSize: rf(14),
                    color: isTextWhite ? Colors.white : Colors.black,
                    fontWeight: FontWeight.w500,
                  ),
                ),
                Text(
                  trip.duration,
                  style: TextStyle(
                    fontSize: rf(10),
                    color: isTextWhite ? Colors.white : Colors.black,
                    // fontWeight: FontWeight.w500,
                  ),
                ),
              ],
            ),
            if (isCountry) Container() else const Spacer(),
            // SizedBox(height: rh(5)),
            if (isCountry)
              Container()
            else
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Text(
                    trip.destination,
                    style: TextStyle(
                      fontSize: rf(10),
                      // fontWeight: FontWeight.w500,
                    ),
                  ),
                  Text(
                    trip.price,
                    style: TextStyle(
                      fontSize: rf(14),
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ],
              ),
          ],
        ),
      ),
    );
  }
}
