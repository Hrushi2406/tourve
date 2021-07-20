import 'trip.dart';

final upcomingTripsMap = [
  {
    'title': 'Waipio Valley',
    'image': 'assets/images/venice.png',
    'duration': '4 days',
    'destination': 'Hawai, USA',
    'price': '\$386',
    'experiences': 'Something goes here',
    'extraDuration': 'For 3 days and 2 nights',
  },
  {
    'title': 'Glacier Hiking',
    'image': 'assets/images/venice.png',
    'duration': '3 days',
    'destination': 'Hardangervidda, Norway',
    'price': '\$149',
    'experiences': 'Something goes here',
    'extraDuration': 'For 3 days and 2 nights',
  },
  {
    'title': 'Sagarda Familia',
    'image': 'assets/images/venice.png',
    'duration': '2 days',
    'destination': 'Barcelona, Spain',
    'price': '\$69',
    'experiences': 'Something goes here',
    'extraDuration': 'For 3 days and 2 nights',
  },
  {
    'title': 'Bora Bora Island',
    'image': 'assets/images/venice.png',
    'duration': '8 days',
    'destination': 'French Polynesia, France',
    'price': '\$489',
    'experiences': 'Something goes here',
    'extraDuration': 'For 3 days and 2 nights',
  },
];

final homeCountryMap = [
  {
    'title': 'Indian Highlights',
    'image': 'assets/images/venice.png',
    'duration': '24 places',
    'destination': 'Hawai, USA',
    'price': '\$386',
    'experiences': 'Something goes here',
    'extraDuration': 'For 3 days and 2 nights',
  },
  {
    'title': 'Spanish Arch',
    'image': 'assets/images/venice.png',
    'duration': '15 places',
    'destination': 'Hardangervidda, Norway',
    'price': '\$149',
    'experiences': 'Something goes here',
    'extraDuration': 'For 3 days and 2 nights',
  },
  {
    'title': 'Britian Palace',
    'image': 'assets/images/venice.png',
    'duration': '14 places',
    'destination': 'Barcelona, Spain',
    'price': '\$69',
    'experiences': 'Something goes here',
    'extraDuration': 'For 3 days and 2 nights',
  },
  {
    'title': 'Scandinavia',
    'image': 'assets/images/venice.png',
    'duration': '9 places',
    'destination': 'French Polynesia, France',
    'price': '\$489',
    'experiences': 'Something goes here',
    'extraDuration': 'For 3 days and 2 nights',
  },
];

final moodsMap = [
  {
    'title': 'Hiking',
    'image': 'assets/images/venice.png',
    'duration': '5 trips',
    'destination': 'Hawai, USA',
    'price': '\$386',
    'experiences': 'Something goes here',
    'extraDuration': 'For 3 days and 2 nights',
  },
  {
    'title': 'Paragliding',
    'image': 'assets/images/venice.png',
    'duration': '6 trips',
    'destination': 'Hardangervidda, Norway',
    'price': '\$149',
    'experiences': 'Something goes here',
    'extraDuration': 'For 3 days and 2 nights',
  },
  {
    'title': 'Museum',
    'image': 'assets/images/venice.png',
    'duration': '8 trips',
    'destination': 'Barcelona, Spain',
    'price': '\$69',
    'experiences': 'Something goes here',
    'extraDuration': 'For 3 days and 2 nights',
  },
  {
    'title': 'Historical',
    'image': 'assets/images/venice.png',
    'duration': '5 trips',
    'destination': 'French Polynesia, France',
    'price': '\$489',
    'experiences': 'Something goes here',
    'extraDuration': 'For 3 days and 2 nights',
  },
];

final List<Trip> upcomingTrips =
    upcomingTripsMap.map((map) => Trip.fromMap(map)).toList();

final List<Trip> countryTrips =
    homeCountryMap.map((map) => Trip.fromMap(map)).toList();
final List<Trip> moodTrips = moodsMap.map((map) => Trip.fromMap(map)).toList();
