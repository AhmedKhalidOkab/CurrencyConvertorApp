import 'package:flutter/material.dart';

class CurrentryTextWidgets extends StatelessWidget {
  const CurrentryTextWidgets({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Text(
      'Currencies compared to 1 USD',
      style: TextStyle(
        fontSize: 20,
        fontWeight: FontWeight.bold,
      ),
    );
  }
}