import 'package:flutter/material.dart';

class Card1 extends StatelessWidget {
  const Card1({super.key});

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        double cardWidth = constraints.maxWidth;
        double greyWidth = cardWidth * 0.4;
        double greenWidth = cardWidth * 0.8;

        return Card(
          color: Colors.redAccent,
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: FractionallySizedBox(
                    widthFactor: greyWidth / cardWidth,
                    child: Container(
                      color: Colors.grey,
                      height: 40.0,
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: FractionallySizedBox(
                    widthFactor: greenWidth / cardWidth,
                    child: Container(
                      color: Colors.green,
                      height: 40.0,
                    ),
                  ),
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}
