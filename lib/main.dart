import 'package:flutter/material.dart';
import 'package:flutter_application/modules/shared/components/colors.dart';

import 'modules/bmi_design.dart';


void main() {
  runApp(const BMI());
}

class BMI extends StatelessWidget {
  const BMI({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.deepPurple,
        backgroundColor: color3,
        iconTheme: const IconThemeData(color: Colors.deepPurple),
      ),
      home: const BmiDesign(),
      
    );
  }
}
