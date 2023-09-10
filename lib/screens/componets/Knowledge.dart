import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import '../../constants.dart';


class Knowledge extends StatelessWidget {
  const Knowledge({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Divider(),
        Padding(
          padding: const EdgeInsets.symmetric(vertical: defaultPadding),
          child: Text("Knowledge",style: Theme.of(context).textTheme.titleSmall,),
        ),
        const KnowledgeText(text: "Flutter,dart",),
        const KnowledgeText(text: "Stylus,Sass,less",),
        const KnowledgeText(text: "Git knowledge",)
      ],
    );
  }
}


class KnowledgeText extends StatelessWidget {
  const KnowledgeText({
    super.key, required this.text,
  });
  final String text;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: defaultPadding),
      child: Row(
        children: [
          SvgPicture.asset("assets/icons/check.svg"),
          const SizedBox(width: defaultPadding,),
          Text(text),
        ],
      ),
    );
  }
}
