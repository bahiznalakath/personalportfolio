import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:portfolio/responsive.dart';
import 'package:url_launcher/url_launcher.dart';
import '../../../constants.dart';
import '../../../models/project.dart';

class ProjectCard extends StatelessWidget {
  const ProjectCard({
    super.key,
    required this.project,
  });

  final Project project;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () async {
        if (await canLaunch(project.githubUrl!)) {
          await launch(project.githubUrl!);
        } else {
          throw 'Could not launch ${project.githubUrl}';
        }
      },
      child: Card(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10),
        ),
        elevation: 10,
        child: Container(
          padding: const EdgeInsets.all(defaultPadding),
          color: secondaryColor,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                project.title!,
                maxLines: 2,
                overflow: TextOverflow.ellipsis,
                style: Theme.of(context).textTheme.titleSmall,
              ),
              const Spacer(),
              Text(
                project.description!,
                maxLines: Responsive.isMobileLarge(context)?3: 4,
                overflow: TextOverflow.ellipsis,
                style: TextStyle(height: 1.5),
              ),
              const Spacer(),
              TextButton(onPressed: () {}, child: const Text("Read More>>",style: TextStyle(color: primaryColor),))
            ],
          ),
        ),
      ),
    );
  }
}
