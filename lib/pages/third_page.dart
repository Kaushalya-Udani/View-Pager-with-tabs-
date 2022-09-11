import 'dart:ui';

import 'package:flutter/material.dart';
class ThirdPage extends StatelessWidget {

  @override
  Widget build(BuildContext context) => Scaffold (
    body: Container(
      color: Colors.pink,
      child: Center(
        child: Text(
          'Tab 3 Content',
          style: TextStyle(
            fontSize: 32,
            color: Colors.white,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    ),
  );
}
