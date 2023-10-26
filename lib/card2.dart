import 'package:flutter/material.dart';

class Card2 extends StatelessWidget {
  const Card2({super.key});

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        double cardWidth = constraints.maxWidth;
        double greenWidth = cardWidth * 0.8;
        double greyWidth = cardWidth * 0.2;

        return Stack(
          children: [
            Column(
              children: [
                const SizedBox(height: 10),
                Center(
                  child: Card(
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
                  ),
                ),
              ],
            ),
            Center(
              child: FractionallySizedBox(
                widthFactor: greyWidth / cardWidth,
                child: Container(
                  color: Colors.grey,
                  height: 30.0,
                ),
              ),
            ),
          ],
        );
      },
    );
  }
}
