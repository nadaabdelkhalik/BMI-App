import 'package:flutter/material.dart';
import 'package:flutter_application/consts/vars.dart';

class Slide extends StatefulWidget {
  const Slide({Key? key}) : super(key: key);

  @override
  State<Slide> createState() => _SlideState();
}

class _SlideState extends State<Slide> {
  @override
  Widget build(BuildContext context) => Column(
        children: [
          const Expanded(
            child: Text(
              "Height",
              style: TextStyle(fontSize: 30),
            ),
          ),
          Expanded(
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.baseline,
              mainAxisAlignment: MainAxisAlignment.center,
              textBaseline: TextBaseline.alphabetic,
              children: [
                Text("${height.round()}", style: const TextStyle(fontSize: 30)),
                const Text(
                  "cm",
                  style: TextStyle(fontSize: 15),
                ),
              ],
            ),
          ),
          Expanded(
              child: Slider(
            onChanged: (value) {
              setState(() {});
              height = value;
            },
            value: height,
            min: 10,
            max: 200,
          ))
        ],
      );
}
