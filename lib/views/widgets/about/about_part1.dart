import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';

import '../../../constraint/theme.dart';

class AboutPart1 extends StatefulWidget {
  const AboutPart1({Key? key}) : super(key: key);

  @override
  State<AboutPart1> createState() => _AboutPart1State();
}

class _AboutPart1State extends State<AboutPart1> {
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text(
          'About Me',
          style: boldTextStyle,
        ),
        AnimatedTextKit(
          animatedTexts: [
            TypewriterAnimatedText(
              'Backend Developer',
              textStyle: mediumTextStyle.copyWith(color: secondaryColor),
              speed: const Duration(milliseconds: 100),
            ),
            TypewriterAnimatedText(
              'Frontend Developer',
              textStyle: mediumTextStyle.copyWith(color: secondaryColor),
              speed: const Duration(milliseconds: 100),
            ),
          ],
          totalRepeatCount: 4,
          pause: const Duration(milliseconds: 1000),
          displayFullTextOnTap: true,
          stopPauseOnTap: true,
        ),
        const SizedBox(
          height: 8.0,
        ),
        RichText(
          text: const TextSpan(
            style: smallTextStyle,
            text: 'Lorem ipsum dolor sit amet, consectetur adipiscing elit,\n',
            children: [
              TextSpan(
                text:
                    'sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. \n',
              ),
              TextSpan(
                text:
                    'Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris \n',
              ),
              TextSpan(
                text:
                    'nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in \n',
              ),
              TextSpan(
                text:
                    'reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur.\n',
              ),
              TextSpan(
                text: 'Excepteur sint occaecat cupidatat non proident,\n',
              ),
              TextSpan(
                text:
                    'sunt in culpa qui officia deserunt mollit anim id est laborum.\n',
              ),
            ],
          ),
          softWrap: true,
          overflow: TextOverflow.clip,
        ),
        const SizedBox(
          height: 20.0,
        ),
        MaterialButton(
          onPressed: () {},
          color: secondaryColor,
          elevation: 10.0,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(30.0),
          ),
          padding: const EdgeInsets.symmetric(vertical: 20.0, horizontal: 50.0),
          child: const Text(
            'Read More',
            style: TextStyle(
              fontFamily: 'sans-serif',
              fontSize: 16.0,
              color: background1,
            ),
          ),
        ),
      ],
    );
  }
}
