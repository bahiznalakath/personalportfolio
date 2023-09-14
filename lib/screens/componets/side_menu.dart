import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:portfolio/constants.dart';
import 'package:portfolio/screens/componets/skills.dart';
import 'package:url_launcher/url_launcher.dart';
import 'Knowledge.dart';
import 'Myinfo.dart';
import 'areainfotext.dart';
import 'coding.dart';

class SideMenu extends StatefulWidget {
  const SideMenu({Key? key}) : super(key: key);

  @override
  State<SideMenu> createState() => _SideMenuState();
}

class _SideMenuState extends State<SideMenu> {
  bool isAboutMeVisible = false;
  final Uri resume = Uri.parse('https://drive.google.com/file');
  final Uri instagram =
      Uri.parse('https://instagram.com/bahiz_nalakath?igshid=OGQ5ZDc2ODk2ZA==');
  final Uri gitHub = Uri.parse('https://github.com/bahiznalakath');
  final Uri linkedin = Uri.parse(
      'https://www.linkedin.com/in/muhammed-bahiz-n-789a01228?fbclid=PAAaaC-8a0pCuc6c3Op8Lg2RoiK_rPNLddt2aKy9ZKcMnTZCvpf10h9zXR7Ro');
  final Uri twitter = Uri.parse('https://twitter.com/bahiznalakath');
  final Uri whatsapp =
      Uri.parse('https://api.whatsapp.com/send?phone=9072834040');

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: SafeArea(
        child: Column(
          children: [
            const MyInfo(),
            SingleChildScrollView(
              child: Column(
                children: [
                  TextButton(
                    onPressed: () {
                      setState(() {
                        // Toggle the visibility of "About Me" text
                        isAboutMeVisible = !isAboutMeVisible;
                      });
                    },
                    child: const Text(
                      'About Me',
                      style: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.bold,
                        color: bodyTextColor,
                      ),
                    ),
                  ),
                  Visibility(
                    visible: isAboutMeVisible,
                    child: const Padding(
                      padding: EdgeInsets.all(8.0),
                      child: Text(
                        "I recently completed my Bachelor's degree in Computer Science and have a strong passion for crafting captivating and interactive Flutter applications. I prioritize the creation of visually appealing user interfaces that deliver exceptional user experiences. While my main area of expertise is in front-end development, I also actively engage in backend development for Flutter applications to ensure seamless feature integration and robust data management. My commitment to user-centered design, combined with my proficiency in backend development, enables me to provide comprehensive contributions to the development of feature-rich and visually stunning Flutter applications.",
                        style: TextStyle(fontSize: 10,color: Colors.white),
                        maxLines: 16,
                      ),
                    ),
                  )
                ],
              ),
            ),
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
                        _launchUrl(resume);
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
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Expanded(
                          child: IconButton(
                              onPressed: () {
                                launchUrl(linkedin);
                              },
                              icon: SvgPicture.asset(
                                  "assets/icons/linkedin.svg")),
                        ),
                        Expanded(
                          child: IconButton(
                              onPressed: () async {
                                launchUrl(gitHub);
                              },
                              icon:
                                  SvgPicture.asset("assets/icons/github.svg")),
                        ),
                        Expanded(
                          child: IconButton(
                              onPressed: () {
                                _launchUrl(whatsapp);
                              },
                              icon: SvgPicture.asset(
                                  "assets/icons/whatsapp.svg")),
                        ),
                        Expanded(
                          child: IconButton(
                              onPressed: () {
                                _launchUrl(instagram);
                              },
                              icon: Image.asset(
                                fit: BoxFit.cover,
                                "assets/images/instagram.png",
                              )),
                        ),
                        Expanded(
                          child: IconButton(
                              onPressed: () {
                                _launchUrl(twitter);
                              },
                              icon: Image.asset(
                                fit: BoxFit.cover,
                                "assets/images/twitter.png",
                              )),
                        )
                      ],
                    ),
                  ),
                  const Divider(),
                  const SizedBox(
                    height: defaultPadding,
                  ),
                ],
              ),
            ))
          ],
        ),
      ),
    );
  }

  Future<void> _launchUrl(Uri url) async {
    if (!await launchUrl(url)) {
      throw Exception('Could not launch $url');
    }
  }
}
