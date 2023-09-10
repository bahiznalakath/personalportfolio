

import 'package:flutter/material.dart';

import '../../constants.dart';

class AnimatedLinearProgressIndicator extends StatelessWidget {
  const AnimatedLinearProgressIndicator({
    super.key, required this.percentage, required this.label,
  });
  final  double percentage;
  final String label;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: defaultPadding/2),
      child: TweenAnimationBuilder(
        tween: Tween<double>(begin: 0, end: 0),
        duration: defaultDuration,
        builder: (context, double value, child) => Column(
          children: [
            Row(
              children: [
                Text(
                  label,
                  style: const TextStyle(color: Colors.white),
                ),
                Text((percentage *100).toInt().toString()+"%"),
              ],
            ),
            const SizedBox(height: defaultPadding/2,),
            LinearProgressIndicator(
              value: percentage,
              color: primaryColor,
              backgroundColor: darkColor,
            ),
          ],
        ),
      ),
    );
  }
}
