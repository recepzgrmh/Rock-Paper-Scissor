import 'dart:math';

import 'package:flutter/material.dart';

class Press extends StatefulWidget {
  const Press({super.key});

  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _Press();
  }
}

var randomizer = Random();

class _Press extends State<Press> {
  var changeImage = randomizer.nextInt(3) + 1;

  void bas() {
    setState(() {
      changeImage = randomizer.nextInt(3) + 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Column(mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        
        Image.asset(
          "assets/images/rock-paper-scissor-$changeImage.png",
          width: 250,
        ),
        TextButton(
            onPressed: bas,
            child: const Text(
              "BAŞLA",
              style: TextStyle(fontSize: 28, color: Colors.orange),
            ))
      ],
    );
  }
}
