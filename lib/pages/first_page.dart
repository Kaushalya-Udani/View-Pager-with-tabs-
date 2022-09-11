import 'dart:ui';

import 'package:flutter/material.dart';
class FirstPage extends StatelessWidget {

  @override
  Widget build(BuildContext context) => Scaffold (
    body: Container(
      color: Colors.orange,
      child: Center(
        child: Text(
          'Tab 1 Content',
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
