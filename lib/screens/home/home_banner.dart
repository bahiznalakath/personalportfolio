import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';
import 'package:portfolio/responsive.dart';
import '../../constants.dart';

class HomeBanner extends StatelessWidget {
  const HomeBanner({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: Responsive.isMobile(context) ? 2.5 : 3,
      child: Stack(
        fit: StackFit.expand,
        children: [
          Image.asset(
            fit: BoxFit.cover,
            "assets/images/bg.jpeg",
          ),
          Container(
            color: darkColor.withOpacity(0.66),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: defaultPadding),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Discover My Amazing Art Space",
                  style: Responsive.isDesktop(context)
                      ? Theme.of(context).textTheme.displaySmall!.copyWith(
                          fontWeight: FontWeight.bold, color: Colors.white)
                      : Theme.of(context).textTheme.headlineSmall!.copyWith(
                          fontWeight: FontWeight.bold, color: Colors.white),
                ),
                if (!Responsive.isMobile(context))
                  const SizedBox(
                    height: defaultPadding / 2,
                  ),
                const MYBulidAnimatedText(),
                const SizedBox(
                  height: defaultPadding,
                ),
                if (!Responsive.isMobile(context))
                  ElevatedButton(
                      onPressed: () {},
                      style: TextButton.styleFrom(
                          padding: const EdgeInsets.symmetric(
                              horizontal: defaultPadding * 2),
                          backgroundColor: primaryColor),
                      child: const Text(
                        "EXPLORE NOW",
                        style: TextStyle(color: darkColor),
                      ))
              ],
            ),
          )
        ],
      ),
    );
  }
}

class MYBulidAnimatedText extends StatelessWidget {
  const MYBulidAnimatedText({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return DefaultTextStyle(
      style: Theme.of(context).textTheme.titleMedium!,
      maxLines: 1,
      child: Row(
        children: [
          if (Responsive.isMobileLarge(context)) FlutterCodedText(),
          if (Responsive.isMobileLarge(context))
            SizedBox(
              width: defaultPadding / 2,
            ),
          const Text("I Build"),
          Responsive.isMobile(context)
              ? Expanded(child: AnimatedText())
              : AnimatedText(),
          SizedBox(
            width: defaultPadding / 2,
          ),
          if (Responsive.isMobileLarge(context)) FlutterCodedText()
        ],
      ),
    );
  }
}

class AnimatedText extends StatelessWidget {
  const AnimatedText({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return AnimatedTextKit(animatedTexts: [
      TyperAnimatedText("responsive web and mobile app",
          speed: Duration(milliseconds: 60)),
      TyperAnimatedText("Complete e-commerce app ui",
          speed: Duration(milliseconds: 60)),
      TyperAnimatedText("chat app with a dark and light theme",
          speed: Duration(milliseconds: 60))
    ]);
  }
}

class FlutterCodedText extends StatelessWidget {
  const FlutterCodedText({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Text.rich(TextSpan(text: "<", children: [
      TextSpan(text: "flutter", style: TextStyle(color: primaryColor)),
      TextSpan(text: ">"),
    ]));
  }
}
