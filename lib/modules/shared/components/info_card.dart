import 'package:flutter/material.dart';
import 'package:flutter_application/modules/shared/components/colors.dart';

Widget infoCard(
        {required var text,
        required var info,
        required var function1,
        required var function2}) =>
    Expanded(
      flex: 4,
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15),
          color: color2,
        ),
        child: Padding(
          padding: const EdgeInsets.all(10),
          child: Column(
            children: [
              Expanded(
                child: Text(
                  text,
                  style: const TextStyle(fontSize: 20),
                ),
              ),
              Expanded(
                  child: Row(
                children: [
                  Expanded(
                    flex: 2,
                    child: FloatingActionButton(
                      onPressed: function1,
                      mini: true,
                      child: const Icon(Icons.remove),
                    ),
                  ),
                  Expanded(
                    child: Text(
                      "$info",
                      style: const TextStyle(fontSize: 20),
                    ),
                  ),
                  Expanded(
                    flex: 2,
                    child: FloatingActionButton(
                      onPressed: function2,
                      mini: true,
                      child: const Icon(Icons.add),
                    ),
                  ),
                ],
              ))
            ],
          ),
        ),
      ),
    );
