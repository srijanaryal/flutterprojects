import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:weather/single_weather.dart';
import 'package:weather/weatherlocations.dart';
import 'slider.dart';

class Weather extends StatefulWidget {
  const Weather({super.key});

  @override
  State<Weather> createState() => _WeatherState();
}

class _WeatherState extends State<Weather> {
  int _currentPage = 0;
  late String bgImg;

  _onPageChanged(int index) {
    setState(() {
      _currentPage = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    if (locationlist[_currentPage].city == 'Pokhara') {
      bgImg = 'images/fewa.jpg';
    } else if (locationlist[_currentPage].city == 'Bhairahawa') {
      bgImg = bgImg = 'images/bhairahawa.jpg';
    } else if (locationlist[_currentPage].city == 'Butwal') {
      bgImg = bgImg = 'images/butwal.jpg';
    } else if (locationlist[_currentPage].city == 'Janakpur') {
      bgImg = bgImg = 'images/janakpur.jpg';
    } else if (locationlist[_currentPage].city == 'Kathmandu') {
      bgImg = bgImg = 'images/bouddha.jpg';
    }
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        leading: Padding(
          padding: const EdgeInsets.all(10.0),
          child: IconButton(
            icon: Icon(
              Icons.search,
              size: 30,
            ),
            onPressed: () {},
          ),
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: IconButton(
              onPressed: () {
                print('loda');
              },
              icon: Icon(
                Icons.menu_rounded,
                size: 30,
              ),
            ),
          )
        ],
        // title: Text(' '),
      ),
      body: Container(
          child: Stack(
        children: [
          Image.asset(
            bgImg,
            fit: BoxFit.cover,
            height: double.infinity,
            width: double.infinity,
          ),
          Container(
            decoration: BoxDecoration(color: Colors.black38),
          ),
          Container(
            margin: EdgeInsets.only(top: 30, left: 10),
            child: Row(
              children: [
                for (int i = 0; i < locationlist.length; i++)
                  if (i == _currentPage) Sliderdot(true) else Sliderdot(false)
              ],
            ),
          ),
          PageView.builder(
            itemBuilder: ((context, index) => SingleWeather(index)),
            itemCount: locationlist.length,
            scrollDirection: Axis.horizontal,
            onPageChanged: _onPageChanged,
          )
        ],
      )),
    );
  }
}
