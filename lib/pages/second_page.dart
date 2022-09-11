import 'dart:ui';

import 'package:flutter/material.dart';
class SecondPage extends StatelessWidget {

  @override
  Widget build(BuildContext context) => Scaffold (
    body: Container(
      color: Colors.green,
      child: Center(
        child: Text(
          'Tab 2 Content',
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
