import 'package:flutter/material.dart';
import 'package:flutter_application/consts/vars.dart';
import 'package:flutter_application/modules/shared/components/colors.dart';
import 'package:flutter_application/modules/shared/components/gender_card.dart';

class Gender extends StatefulWidget {
  const Gender({Key? key}) : super(key: key);

  @override
  State<Gender> createState() => _GenderState();
}

class _GenderState extends State<Gender> {
  @override
  Widget build(BuildContext context) => Padding(
        padding: const EdgeInsets.all(20),
        child: Row(
          children: [
            genderCard(
                function: () {
                  setState(() {
                    isMale = 1;
                  });
                },
                borders: isMale == 1
                    ? Border.all(color: color1, width: 5)
                    : const Border(),
                icon: Icons.male,
                text: "Male"),
            const Expanded(
              child: SizedBox(),
            ),
            genderCard(
                function: () {
                  setState(() {
                    isMale = 2;
                  });
                },
                borders: isMale == 2
                    ? Border.all(color: color1, width: 5)
                    : const Border(),
                icon: Icons.female,
                text: "Female"),
          ],
        ),
      );
}
