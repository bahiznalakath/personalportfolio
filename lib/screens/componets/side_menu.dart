import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:portfolio/constants.dart';
import 'package:portfolio/screens/componets/skills.dart';
import 'package:url_launcher/url_launcher.dart';
import '../../Links/links.dart';
import 'Knowledge.dart';
import 'Myinfo.dart';
import 'areainfotext.dart';
import 'coding.dart';

class SideMenu extends StatelessWidget {
  const SideMenu({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: SafeArea(
        child: Column(
          children: [
            const MyInfo(),
            Expanded(
                child: SingleChildScrollView(
              padding: const EdgeInsets.all(defaultPadding),
              child: Column(
                children: [
                  const AreaInfoText(
                    title: "Residence",
                    text: "Kerala",
                  ),
                  const AreaInfoText(
                    title: "City",
                    text: "Edavanna",
                  ),
                  const AreaInfoText(
                    title: "Age",
                    text: "21",
                  ),
                  const Skills(),
                  const SizedBox(
                    height: defaultPadding,
                  ),
                  const Coding(),
                  const Knowledge(),
                  const Divider(),
                  const SizedBox(
                    height: defaultPadding,
                  ),
                  TextButton(
                      onPressed: () {
                        (resume, "pdf");
                      },
                      child: FittedBox(
                        child: Row(
                          children: [
                            const Text(
                              "DOWNLOAD CV",
                            ),
                            const SizedBox(
                              width: defaultPadding / 2,
                            ),
                            SvgPicture.asset("assets/icons/download.svg")
                          ],
                        ),
                      )),
                  Container(
                    margin: const EdgeInsets.only(top: defaultPadding / 2),
                    color: const Color(0xFF24242E),
                    child: Row(
                      children: [
                        IconButton(
                            onPressed: () {
                              launch(linkedin);
                            },
                            icon:
                                SvgPicture.asset("assets/icons/linkedin.svg")),
                        IconButton(
                            onPressed: () async {

                            },
                            icon:
                                SvgPicture.asset("assets/icons/github.svg")),
                        IconButton(
                            onPressed: () {
                              gitHub;
                            },
                            icon:
                                SvgPicture.asset("assets/icons/twitter.svg")),
                        IconButton(
                            onPressed: () {},
                            icon: SvgPicture.asset("assets/icons/linkedin.svg"))
                      ],
                    ),
                  )
                ],
              ),
            ))
          ],
        ),
      ),
    );
  }
}
