

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../../constants.dart';
import 'animatedLinearProgressindiactor.dart';

class Coding extends StatelessWidget {
  const Coding({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Divider(),
        Padding(
          padding: const EdgeInsets.symmetric(vertical: defaultPadding),
          child: Text(
            "Coding",
            style: Theme.of(context).textTheme.titleSmall,
          ),
        ),
        const AnimatedLinearProgressIndicator(
          percentage: 0.7,label: "Dart",
        ),
        const AnimatedLinearProgressIndicator(
          percentage: 0.9,label: "HTML",
        ),
        const AnimatedLinearProgressIndicator(
          percentage: 0.69,label: "CSS",
        ),
        const AnimatedLinearProgressIndicator(
          percentage: 0.59,label: "JavaScript",
        )
      ],
    );
  }
}