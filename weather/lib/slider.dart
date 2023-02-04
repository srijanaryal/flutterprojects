import 'package:flutter/material.dart';
// import 'package:flutter/src/widgets/container.dart';
// import 'package:flutter/src/widgets/framework.dart';

class Sliderdot extends StatelessWidget {
  bool isActive;
  Sliderdot(this.isActive, {super.key});

  @override
  Widget build(BuildContext context) {
    return AnimatedContainer(
      duration: Duration(milliseconds: 300),
      margin: EdgeInsets.only(top: 150, left: 5),
      child: Row(
        children: [
          Container(
            height: 10,
            width: isActive ? 10 : 5,
            decoration: BoxDecoration(
              color: isActive ? Colors.white : Colors.black,
              borderRadius: BorderRadius.all(
                Radius.circular(10),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
