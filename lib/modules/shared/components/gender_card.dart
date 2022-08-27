import 'package:flutter/material.dart';
import 'package:flutter_application/modules/shared/components/colors.dart';

Widget genderCard(
        {required var function,
        required var borders,
        required var icon,
        required var text}) =>
    Expanded(
      flex: 7,
      child: GestureDetector(
        onTap: function,
        child: Container(
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(15),
              color: color2,
              border: borders),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(
                icon,
                size: 70,
              ),
              Text(
                text,
                style: const TextStyle(fontSize: 30),
              )
            ],
          ),
        ),
      ),
    );
