import 'package:flutter/material.dart';
import 'package:flutter_application/modules/shared/components/colors.dart';

Widget bottomBar({required String text, required var press}) => Padding(
      padding: const EdgeInsets.all(20),
      child: SizedBox(
        height: 50,
        child: MaterialButton(
          onPressed: press,
          color: color1,
          textColor: color3,
          child: Text(text),
        ),
      ),
    );
