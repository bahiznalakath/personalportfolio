import 'package:flutter/material.dart';

class MyInfo extends StatelessWidget {
  const MyInfo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 1.23,
      child: Container(
        color: const Color(0xFF242430),
        child: Container(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Spacer(
                flex: 2,
              ),
              CircleAvatar(
                radius: 50,
                backgroundImage: AssetImage("assets/images/Bahiz.jpg"),
              ),
              Spacer(),
              Text(
                "Muhammed Bahiz N",
                style: Theme.of(context).textTheme.titleMedium,
              ),
              Text(
                "Flutter Developer ",
                style: TextStyle(
                  fontWeight: FontWeight.w800,
                  height: 1.5,
                ),
              ),
              Spacer(
                flex: 2,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
