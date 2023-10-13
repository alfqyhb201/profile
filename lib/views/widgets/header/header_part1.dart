import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';
import 'package:profile/constraint/theme.dart';
import 'package:profile/views/widgets/header/icons_row.dart';

class HeaderPart1 extends StatefulWidget {
  const HeaderPart1({Key? key}) : super(key: key);

  @override
  State<HeaderPart1> createState() => _HeaderPart1State();
}

class _HeaderPart1State extends State<HeaderPart1> {
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text(
          'Hello, It\'s Me',
          style: mediumTextStyle,
        ),
        const Text(
          'Dark Eye',
          style: boldTextStyle,
        ),
        Row(
          children: [
            const Text(
              'And I\'m a ',
              style: mediumTextStyle,
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
            )
          ],
        ),
        const SizedBox(
          height: 8.0,
        ),
        RichText(
          text: const TextSpan(
            text:
                'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod \n',
            style: smallTextStyle,
            children: [
              TextSpan(
                text: 'tempor incididunt ut labore et dolore magna aliqua',
              ),
            ],
          ),
        ),
        const SizedBox(
          height: 20.0,
        ),
        const IconsRow(),
        const SizedBox(
          height: 30.0,
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
