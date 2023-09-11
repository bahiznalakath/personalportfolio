class Project {
  final String? title, description, githubUrl;

  Project({this.title, this.description, this.githubUrl});
}

List<Project> demoproject = [
  Project(
    title: "FaceBookClone APK",
    description: "facebook cloned application build in flutter and firebase,This repository contains an Android APK project created for educational purposes, serving as a study project to replicate some of the core features and functionality of the Facebook social media platform. ",
    githubUrl: "https://github.com/bahiznalakath/FacebookClone-APK",
  ),
  Project(
    title: "Zomato APK",
    description: "zomato cloned application build in flutter and firebase ,This repository contains an Android APK project, created for educational purposes, as a study project to replicate some of the core features and functionality of the Zomato food delivery and restaurant discovery app.",
    githubUrl: "https://github.com/bahiznalakath/ZomatoClone-APK",
  ),
  Project(
    title: "BloodDonationApp",
    description:
        "Blood Donation  application build in flutter and firebase ,The ultimate blood donation app. Connects donors with blood banks. Simple registration. Real-time notifications. Track donation history. Spread awareness. Save lives. Download now!",
    githubUrl: "https://github.com/bahiznalakath/FireFlutter",
  ),
  Project(
    title: "FaceBookClone APK",
    description: "facebook cloned application build in flutter and firebase,This repository contains an Android APK project created for educational purposes, serving as a study project to replicate some of the core features and functionality of the Facebook social media platform. ",
    githubUrl: "https://github.com/bahiznalakath/FacebookClone-APK",
  ),
  Project(
    title: "Zomato APK",
    description: "zomato cloned application build in flutter and firebase ,This repository contains an Android APK project, created for educational purposes, as a study project to replicate some of the core features and functionality of the Zomato food delivery and restaurant discovery app.",
    githubUrl: "https://github.com/bahiznalakath/ZomatoClone-APK",
  ),
  Project(
    title: "BloodDonationApp",
    description:
    "Blood Donation  application build in flutter and firebase ,The ultimate blood donation app. Connects donors with blood banks. Simple registration. Real-time notifications. Track donation history. Spread awareness. Save lives. Download now!",
    githubUrl: "https://github.com/bahiznalakath/FireFlutter",
  ),
];

class ServicesUtils {
  final String name;
  final String icon;
  final List<String> tool;
  final String description;
  final String githubUrl;

  ServicesUtils({
    required this.name,
    required this.icon,
    required this.description,
    required this.tool,
    required this.githubUrl,
  });
}

List<ServicesUtils> servicesUtils = [
  ServicesUtils(
      name: 'Android App Development',
      icon: 'assets/icons/android.svg',
      description:
          "Are you interested in the great Mobile app? Let's make it a reality.",
      tool: ['Flutter'],
      githubUrl: ""),
  ServicesUtils(
      name: 'iOS App Development',
      icon: 'assets/icons/apple.svg',
      description:
          "Are you interested in the great Mobile app? Let's make it a reality.",
      tool: ['Flutter'],
      githubUrl: ""),
  ServicesUtils(
      name: 'UI/UX Designing',
      icon: 'assets/icons/graphic.svg',
      description:
          "I'm creating elegant designs suited to your needs following core design theory. ",
      tool: ['Adobe XD', 'Figma', 'Photoshop'],
      githubUrl: ""),
  ServicesUtils(
      name: 'Web Development',
      icon: 'assets/icons/website.svg',
      description:
          "Do you have an idea for your next great website? Let's make it a reality.",
      tool: ['Flutter', 'Html,css,js'],
      githubUrl: ""),
];
