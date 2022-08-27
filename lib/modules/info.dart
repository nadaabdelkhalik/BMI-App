import 'package:flutter/material.dart';
import 'package:flutter_application/consts/vars.dart';
import 'package:flutter_application/modules/shared/components/info_card.dart';

class Info extends StatefulWidget {
  const Info({Key? key}) : super(key: key);

  @override
  State<Info> createState() => _InfoState();
}

class _InfoState extends State<Info> {
  @override
  Widget build(BuildContext context) => Padding(
      padding: const EdgeInsets.all(30),
      child: Row(children: [
       
                      infoCard(
                          text: "Age",
                          info: age,
                          function1: () {
                            setState(() {
                              age--;
                            });
                          },
                          function2: () {
                            setState(() {
                              age++;
                            });
                          }),
                      const Expanded(
                        child: SizedBox(),
                      ),
                      infoCard(
                          text: "Weight",
                          info: weight,
                          function1: () {
                            setState(() {
                              weight--;
                            });
                          },
                          function2: () {
                            setState(() {
                              weight++;
                            });
                          })
                    ],
                  ),
                
      );
}
