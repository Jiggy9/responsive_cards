import 'package:flutter/material.dart';
import 'card1.dart';
import 'card2.dart';

class ResponsiveCards extends StatelessWidget {
  const ResponsiveCards({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        Card1(),
        SizedBox(height: 40),
        Card2(),
      ],
    );
  }
}
