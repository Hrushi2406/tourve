import 'country.dart';

final countryMap = {
  {
    'name': 'ITALY',
    'totalPlaces': '12 places',
    'image': 'assets/images/venice.png',
    'description':
        " The Italian places of culture (which include museums, attractions, parks, archives and libraries) amounted to 6,610. Active hotel businesses are 33,000, while non-hotel businesses are 183,000. The tourist flow in the coastal resorts is 53% the best equipped cities are Grosseto for farmhouses, Vieste for campsites and tourist villages  and Cortina d'Ampezzo mountain huts. ",
    'places': [
      {
        'title': 'Waipio Valley',
        'image': 'assets/images/venice.png',
        'duration': '4 days',
        'destination': 'Hawai, USA',
        'price': '\$386',
        'experiences':
            'Lorem ipsum doremat something hads to do with the sthihnbgs antd something and dreams come true sthat aklg a dshdhd Lorem ipsum doremat something hads to do with the sthihnbgs antd something and dreams come true sthat aklg a dshdhd Lorem ipsum doremat something hads to do with the sthihnbgs antd something and dreams come true sthat aklg a dshdhd ',
        'extraDuration': 'For 3 days and 2 nights',
      },
      {
        'title': 'Waipio Valley',
        'image': 'assets/images/venice.png',
        'duration': '4 days',
        'destination': 'Hawai, USA',
        'price': '\$386',
        'experiences':
            'Lorem ipsum doremat something hads to do with the sthihnbgs antd something and dreams come true sthat aklg a dshdhd Lorem ipsum doremat something hads to do with the sthihnbgs antd something and dreams come true sthat aklg a dshdhd Lorem ipsum doremat something hads to do with the sthihnbgs antd something and dreams come true sthat aklg a dshdhd ',
        'extraDuration': 'For 3 days and 2 nights',
      },
      {
        'title': 'Waipio Valley',
        'image': 'assets/images/venice.png',
        'duration': '4 days',
        'destination': 'Hawai, USA',
        'price': '\$386',
        'experiences':
            'Lorem ipsum doremat something hads to do with the sthihnbgs antd something and dreams come true sthat aklg a dshdhd Lorem ipsum doremat something hads to do with the sthihnbgs antd something and dreams come true sthat aklg a dshdhd Lorem ipsum doremat something hads to do with the sthihnbgs antd something and dreams come true sthat aklg a dshdhd ',
        'extraDuration': 'For 3 days and 2 nights',
      },
      {
        'title': 'Waipio Valley',
        'image': 'assets/images/venice.png',
        'duration': '4 days',
        'destination': 'Hawai, USA',
        'price': '\$386',
        'experiences':
            'Lorem ipsum doremat something hads to do with the sthihnbgs antd something and dreams come true sthat aklg a dshdhd Lorem ipsum doremat something hads to do with the sthihnbgs antd something and dreams come true sthat aklg a dshdhd Lorem ipsum doremat something hads to do with the sthihnbgs antd something and dreams come true sthat aklg a dshdhd ',
        'extraDuration': 'For 3 days and 2 nights',
      },
    ],
  },
};

final List<Country> countryList =
    countryMap.map((e) => Country.fromMap(e)).toList();
