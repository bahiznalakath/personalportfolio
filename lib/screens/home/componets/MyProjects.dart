import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:portfolio/responsive.dart';

import '../../../constants.dart';
import '../../../models/project.dart';
import 'ProjectCard.dart';

class MyProjects extends StatefulWidget {
  const MyProjects({
    super.key,
  });

  @override
  State<MyProjects> createState() => _MyProjectsState();
}

class _MyProjectsState extends State<MyProjects> {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "My Projects",
          style: Theme.of(context).textTheme.titleSmall,
        ),
        const SizedBox(
          height: defaultPadding,
        ),
        const Responsive(
          mobile: ProjectGridView(
            crossAxisCount: 1,
            childAspectRation: 1.7,
          ),
          tablet: ProjectGridView(
            childAspectRation: 1.1,
          ),
          desktop: ProjectGridView(),
          mobileLarge: ProjectGridView(
            // childAspectRation: 1.5,
            crossAxisCount: 2,
          ),
        )
      ],
    );
  }
}

class ProjectGridView extends StatelessWidget {
  const ProjectGridView({
    super.key,
    this.crossAxisCount = 3,
    this.childAspectRation = 1.3,
  });

  final int crossAxisCount;
  final double childAspectRation;

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
        shrinkWrap: true,
        physics: const NeverScrollableScrollPhysics(),
        itemCount: demoproject.length,
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: crossAxisCount,
            mainAxisSpacing: defaultPadding,
            childAspectRatio: childAspectRation,
            crossAxisSpacing: defaultPadding),
        itemBuilder: (context, index) => ProjectCard(
              project: demoproject[index],
            ));
  }
}
