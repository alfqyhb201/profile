import 'package:flutter/material.dart';
import 'package:profile/constraint/theme.dart';
import 'package:profile/views/widgets/about/about_part1.dart';
import '../../constraint/deminsions.dart';
import '../widgets/profile_image.dart';

class AboutPage extends StatefulWidget {
  const AboutPage({Key? key}) : super(key: key);

  @override
  State<AboutPage> createState() => _AboutPageState();
}

class _AboutPageState extends State<AboutPage> {
  @override
  Widget build(BuildContext context) {
    double appWidth = MediaQuery.of(context).size.width;
    return Container(
      // width: double.infinity,
      color: background2,
      child: Center(
        child: appWidth > mobileSize
            ? Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: const [
                  ProfileImage(
                      primeColor: secondaryColor, secondColor: background1),
                  AboutPart1(),
                  // Container(),
                ],
              )
            : Column(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: const [
                  ProfileImage(
                      primeColor: secondaryColor, secondColor: background1),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 30.0),
                    child: AboutPart1(),
                  ),
                  // Container(),
                ],
              ),
      ),
    );
  }
}
