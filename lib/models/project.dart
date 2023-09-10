class Project{
   final String? title,description
   ;
   Project({this.title,this.description});
}
List<Project>demoproject=[
  Project(
    title: "FaceBookClone APK",
    description: "facebook cloned appliction build in flutter and firebase ",
  ),
  Project(
    title: "Zomato APK",
    description: "zomato cloned appliction build in flutter and firebase ",
  ),
  Project(
    title: "BloodDonatioonApp",
    description: "facebook cloned appliction build in flutter and firebase ",
  ),
];

class ServicesUtils {
  final String name;
  final String icon;
  final List<String> tool;
  final String description;
  final String githubUrl;

  ServicesUtils(
      {required this.name,
        required this.icon,
        required this.description,
        required this.tool,
        required this.githubUrl,});
}

List<ServicesUtils> servicesUtils = [
  ServicesUtils(
    name: 'Android App Development',
    icon: 'assets/icons/android.svg',
    description:
    "Are you interested in the great Mobile app? Let's make it a reality.",
    tool: ['Flutter'],
    githubUrl:""
  ),
  ServicesUtils(
    name: 'iOS App Development',
    icon: 'assets/icons/apple.svg',
    description:
    "Are you interested in the great Mobile app? Let's make it a reality.",
    tool: ['Flutter'],
      githubUrl:""
  ),
  ServicesUtils(
    name: 'UI/UX Designing',
    icon: 'assets/icons/graphic.svg',
    description:
    "I'm creating elegant designs suited to your needs following core design theory. ",
    tool: ['Adobe XD', 'Figma', 'Photoshop'],
      githubUrl:""
  ),
  ServicesUtils(
    name: 'Web Development',
    icon: 'assets/icons/website.svg',
    description:
    "Do you have an idea for your next great website? Let's make it a reality.",
    tool: ['Flutter', 'Html,css,js'],
      githubUrl:""
  ),
];
