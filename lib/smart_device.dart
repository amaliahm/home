// ignore_for_file: non_constant_identifier_names

import 'dart:math';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SmartDevice extends StatelessWidget {
  final String name;
  final String icon;
  final bool power_on;
  void Function(bool)? onChanged;
  SmartDevice({
    super.key,
    required this.name,
    required this.icon,
    required this.power_on,
    required this.onChanged,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(15),
      child: Container(
        decoration: BoxDecoration(
            color: power_on ? Colors.grey[900] : Colors.grey[200], borderRadius: BorderRadius.circular(24)),
        padding: const EdgeInsets.symmetric(vertical: 25),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Image.asset(
              icon,
              height: 65,
              color: power_on ? Colors.white: Colors.black
            ),
            Row(
              children: [
                Expanded(
                    child: Padding(
                  padding: const EdgeInsets.only(left: 25),
                  child: Text(
                    name,
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 20,
                      color: power_on ? Colors.white: Colors.black
                    ),
                  ),
                )),
                Transform.rotate(
                    angle: pi / 2,
                    child:
                        CupertinoSwitch(value: power_on, onChanged: onChanged))
              ],
            ),
          ],
        ),
      ),
    );
  }
}
