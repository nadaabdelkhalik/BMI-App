import 'dart:math';


import 'package:flutter/material.dart';
import 'package:flutter_application/consts/vars.dart';
import 'package:flutter_application/modules/gender.dart';
import 'package:flutter_application/modules/info.dart';

import 'package:flutter_application/modules/result_page.dart';
import 'package:flutter_application/modules/shared/components/bottom_bar.dart';
import 'package:flutter_application/modules/slider.dart';

class BmiDesign extends StatelessWidget {
  const BmiDesign({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) => Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: const Text("BMI Calculator"),
        ),
        bottomNavigationBar: bottomBar(
            text: "Calculate",
            press: () {
              result = weight / pow(height / 100, 2);

              Navigator.of(context).push(
                MaterialPageRoute(
                  builder: (_) => const Result(),
                  fullscreenDialog: true,
                ),
              );
            }),
        body: Column(
          children: const [
            Expanded(flex: 3, child: Gender()),
            Expanded(flex: 2, child: Slide()),
            Expanded(child: SizedBox()),
            Expanded(flex: 2, child: Info())
          ],
        ),
      );
}
