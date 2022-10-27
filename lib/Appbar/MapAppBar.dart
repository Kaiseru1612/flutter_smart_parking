import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class MyWidget extends StatelessWidget {
  const MyWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Positioned(
      left: 0,
      top: 0,
      right: 0,
      child: Column(children: <Widget>[
        AppBar(
          backgroundColor: Colors.transparent,
          elevation: 0,
          title: Text(
            "SPark",
            style: TextStyle(color: Colors.black),
          ),
        ),
      ]),
    );
  }
}
