import 'package:flutter/material.dart';
import 'package:portfolio/responsive.dart';
import '../../../constants.dart';
import 'Animated_counter.dart';
import 'HeighLight.dart';

class HighLightsInfo extends StatelessWidget {
  const HighLightsInfo({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: defaultPadding),
      child: Responsive.isMobileLarge(context)
          ? Column(
              children: [Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  HeighLight(
                    counter: AnimatedCounter(
                      value: 29,
                      text: "+",
                    ),
                    label: "GitHub Projects",
                  ),
                ],
              ),
              const SizedBox(height: defaultPadding,),
              Row(
                children: [

                ],
              )
              ],
            )
          : Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                HeighLight(
                  counter: AnimatedCounter(
                    value: 29,
                    text: "+",
                  ),
                  label: "GitHub Projects",
                ),
              ],
            ),
    );
  }
}
