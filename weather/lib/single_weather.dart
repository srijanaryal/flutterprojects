import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:weather/weatherlocations.dart';

class SingleWeather extends StatelessWidget {
  final int index;
  SingleWeather(this.index);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Expanded(
            child: Column(
              // mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  height: 200,
                ),
                Text(
                  locationlist[index].city,
                  style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.w300,
                      fontSize: 40),
                ),
                Text(
                  locationlist[index].dateTime,
                  style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.w400,
                      fontSize: 17),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 8.0),
            child: Column(
              // mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  height: 200,
                ),
                Row(
                  children: [
                    SvgPicture.asset(
                      'images/sunny.svg',
                      // width: 0,
                      // height: 30,
                      color: Colors.pink,
                    ),
                    Text(
                      locationlist[index].temperature,
                      style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.w900,
                          fontSize: 60),
                    ),
                  ],
                ),
                Text(
                  locationlist[index].weathertype,
                  style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.w300,
                      fontSize: 40),
                ),
              ],
            ),
          ),
          Column(
            children: [
              Container(
                margin: EdgeInsets.all(40),
                decoration:
                    BoxDecoration(border: Border.all(color: Colors.white)),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      children: [
                        // SvgPicture.asset(
                        //   'images/sunny.svg',
                        //   // width: 0,
                        //   // height: 30,
                        //   color: Colors.pink,
                        // ),
                        Text(
                          locationlist[index].weathertype,
                          style: const TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.w600,
                              fontSize: 25),
                        ),
                        Text(
                          locationlist[index].rain.toString(),
                          style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.w300,
                              fontSize: 20),
                        ),
                        Text(
                          locationlist[index].humidity.toString(),
                          style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.w800,
                              fontSize: 15),
                        ),
                        Stack(
                          children: [
                            Container(
                              height: 5,
                              width: 40,
                              color: Colors.white,
                            ),
                            Container(
                              height: 5,
                              width: 10,
                              color: Colors.red,
                            ),
                          ],
                        )
                      ],
                    ),
                    Column(
                      children: [
                        // SvgPicture.asset(
                        //   'images/sunny.svg',
                        //   // width: 0,
                        //   // height: 30,
                        //   color: Colors.pink,
                        // ),
                        Text(
                          'Rain',
                          style: const TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.w600,
                              fontSize: 25),
                        ),
                        Text(
                          '2',
                          style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.w300,
                              fontSize: 20),
                        ),
                        Text(
                          '%',
                          style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.w800,
                              fontSize: 15),
                        ),
                        Stack(
                          children: [
                            Container(
                              height: 5,
                              width: 40,
                              color: Colors.white,
                            ),
                            Container(
                              height: 5,
                              width: 10,
                              color: Colors.green,
                            ),
                          ],
                        )
                      ],
                    ),
                    Column(
                      children: [
                        Text(
                          'Humid',
                          style: const TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.w600,
                              fontSize: 25),
                        ),
                        Text(
                          '11',
                          style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.w300,
                              fontSize: 20),
                        ),
                        Text(
                          '%',
                          style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.w800,
                              fontSize: 15),
                        ),
                        Stack(
                          children: [
                            Container(
                              height: 5,
                              width: 40,
                              color: Colors.white,
                            ),
                            Container(
                              height: 5,
                              width: 10,
                              color: Colors.purple,
                            ),
                          ],
                        )
                      ],
                    ),
                  ],
                ),
              )
            ],
          )
        ],
      ),
    );
  }
}
