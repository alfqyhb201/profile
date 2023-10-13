import 'package:flutter/material.dart';
import 'package:profile/constraint/theme.dart';
import 'package:profile/views/widgets/about/about_part1.dart';
import '../widgets/profile_image.dart';

class AboutPage extends StatefulWidget {
  const AboutPage({Key? key}) : super(key: key);

  @override
  State<AboutPage> createState() => _AboutPageState();
}

class _AboutPageState extends State<AboutPage> {
  @override
  Widget build(BuildContext context) {
    return Container(
      // width: double.infinity,
      color: background2,
      child: Center(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: const [
            ProfileImage(primeColor: secondaryColor, secondColor: background1),
            AboutPart1(),
            // Container(),
          ],
        ),
      ),
    );
  }
}
