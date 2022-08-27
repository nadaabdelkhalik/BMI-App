import 'package:flutter/material.dart';
import 'package:flutter_application/consts/vars.dart';
import 'package:flutter_application/modules/shared/components/bottom_bar.dart';

class Result extends StatelessWidget {
  const Result({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    if (result < 18.5) {
      resultState = " You are Underweighted 😞";
    } else if (result >= 18.5 && result < 24.9) {
      resultState = " You are perfect 👉🏽💜👈🏽";
    } else if (result >= 24.9 && result < 29.9) {
      resultState = " You are Overweighted 😞";
    } else if (result >= 29.9) {
      resultState = " You need to visit a doctor 😭";
    }
    return Scaffold(
        body: SafeArea(
          child: Center(
            child: Expanded(
              child: SingleChildScrollView(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      " Result : ${result.round()}",
                      style: const TextStyle(fontSize: 30),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(18),
                      child: Text(
                        " $resultState ",
                        style: const TextStyle(fontSize: 20),
                      ),
                    )
                  ],
                ),
              ),
            ),
          ),
        ),
        bottomNavigationBar: bottomBar(
            text: "Back",
            press: () {
              Navigator.pop(context);
            }));
  }
}
