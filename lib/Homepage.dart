import 'dart:async';
import 'package:flutter/material.dart';

class Homepage extends StatefulWidget {
  const Homepage({super.key});

  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  //logic of the Stopwatch app

  int seconds = 0, minutes = 0, hours = 0;
  String digitSeconds = '00', digitMinutes = '00', digitHours = '00';
  Timer? timer;
  bool started = false;
  List laps = [];

  //Creating the stop timer function

  void stop() {
    timer!.cancel();
    setState(() {
      started = false;
    });
  }

  //reset function

  void reset() {
    timer!.cancel();
    setState(() {
      seconds = 0;
      minutes = 0;
      hours = 0;

      digitSeconds = '00';
      digitHours = '00';
      digitMinutes = '00';
    });
  }

  void addlaps() {
    String lap = '$digitHours:$digitMinutes:$digitSeconds';
    setState(() {
      laps.add(lap);
    });
  }
// creating the start timer function

  void start() {
    started = true;
    timer = Timer.periodic(const Duration(seconds: 1), (timer) {
      int localSeconds = seconds + 1;
      int localMinutes = minutes;
      int localHours = hours;

      if (localSeconds > 59) {
        if (localMinutes > 59) {
          localHours++;
          localMinutes = 0;
        } else {
          localMinutes++;
          localSeconds = 0;
        }
      }
      setState(() {
        seconds = localSeconds;
        minutes = localMinutes;
        hours = localHours;
        digitSeconds = (seconds >= 10) ? '$seconds' : '0$seconds';
        digitHours = (hours >= 10) ? '$hours' : '0$hours';
        digitMinutes = (minutes >= 10) ? '$minutes' : '0$minutes';
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff1c2757),
      body: SafeArea(
          child: Column(
        children: [
          Center(
            child: Padding(
              padding: const EdgeInsets.all(15.0),
              child: Text(
                'Stopwatch',
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 40,
                    fontWeight: FontWeight.bold),
              ),
            ),
          ),
          SizedBox(
            height: 30,
          ),
          Text(
            '$digitHours:$digitMinutes:$digitSeconds ',
            style: TextStyle(
                color: Colors.white, fontSize: 60, fontWeight: FontWeight.bold),
          ),
          SizedBox(
            height: 100,
          ),
          Container(
            height: 300,
            decoration: BoxDecoration(
                color: Colors.grey, borderRadius: BorderRadius.circular(10)),
//adding list builder for the stopwatch timelapse

            child: ListView.builder(
                itemCount: laps.length,
                itemBuilder: (context, index) {
                  return Padding(
                    padding: const EdgeInsets.all(15.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'Lap No ${index + 1}',
                          style: TextStyle(color: Colors.white, fontSize: 40),
                        ),
                        Text(
                          '${laps[index]}',
                          style: TextStyle(color: Colors.white, fontSize: 40),
                        ),
                      ],
                    ),
                  );
                }),
          ),
          SizedBox(
            height: 30,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Expanded(
                child: RawMaterialButton(
                  onPressed: () {
                    (!started) ? start() : stop();
                  },
                  shape: const StadiumBorder(
                      side: BorderSide(color: Colors.white)),
                  child: Text(
                    (!started) ? 'Start' : 'Pause',
                    style: TextStyle(
                        color: Colors.white, fontWeight: FontWeight.bold),
                  ),
                ),
              ),
              SizedBox(
                width: 10,
              ),
              IconButton(
                onPressed: () {
                  addlaps();
                },
                icon: Icon(
                  Icons.flag_circle,
                  size: 40,
                ),
                color: Colors.white,
              ),
              SizedBox(
                width: 15,
              ),
              Expanded(
                child: RawMaterialButton(
                  onPressed: () {
                    reset();
                  },
                  fillColor: Colors.purple,
                  shape: const StadiumBorder(
                      side: BorderSide(color: Colors.white)),
                  child: Text(
                    (!started) ? 'Reset' : 'Reset',
                    style: TextStyle(
                        color: Colors.white, fontWeight: FontWeight.bold),
                  ),
                ),
              ),
            ],
          ),
          SizedBox(
            height: 130,
          ),
          Text(
            'Made by Srijan',
            style: TextStyle(color: Colors.white),
          )
        ],
      )),
    );
  }
}
