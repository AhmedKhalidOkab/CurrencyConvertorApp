import 'package:currencyapp/presentation_layer/screens/calaculate/widgets/CustomFromTo.dart';
import 'package:flutter/material.dart';

class CustomFromTo extends StatelessWidget {
  const CustomFromTo({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        const SizedBox(
          width: 10,
        ),
        const Text(
          'From:',
          style: TextStyle(
            fontSize: 24,
            fontWeight: FontWeight.bold,
          ),
        ),
        const SizedBox(
          width: 10,
        ),
        customCrrencyWidget(
          code: 'USD',
        ),
        Spacer(),
        const Text(
          'To:',
          style: TextStyle(
            fontSize: 24,
            fontWeight: FontWeight.bold,
          ),
        ),
        const SizedBox(
          width: 10,
        ),
        customCrrencyWidget(
          code: 'EGP',
        ),
        const SizedBox(
          width: 40,
        ),
      ],
    );
  }
}
