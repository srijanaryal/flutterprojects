class Weatherlocation {
  final String city;
  final String dateTime;
  final String temperature;
  final String weathertype;
  final int wind;
  final int rain;
  final int humidity;

  Weatherlocation(this.city, this.dateTime, this.temperature, this.weathertype,
      this.wind, this.rain, this.humidity);
}

final locationlist = [
  Weatherlocation(
      'Pokhara', '08:00 PM-Friday,3 Feb 2023', '35\u2103', 'Sunny', 7, 2, 69),
  Weatherlocation('Bhairahawa', '08:00 PM-Friday,3 Feb 2023', '15\u2103',
      'Cloudy', 34, 2, 79),
  Weatherlocation(
      'Butwal', '08:00 PM-Friday,3 Feb 2023', '15\u2103', 'Rain', 5, 2, 49),
  Weatherlocation(
    'Janakpur',
    '08:00 PM-Friday,3 Feb 2023',
    '22\u2103',
    'Night',
    10,
    4,
    2,
  ),
  Weatherlocation(
    'Kathmandu',
    '08:00 PM-Friday,3 Feb 2023',
    '22\u2103',
    'Night',
    10,
    4,
    2,
  ),
];
