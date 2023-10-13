import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:profile/constraint/theme.dart';
import 'package:profile/views/widgets/header/header_part1.dart';
import 'package:profile/views/widgets/profile_image.dart';

class HeaderPage extends StatefulWidget {
  const HeaderPage({Key? key}) : super(key: key);

  @override
  State<HeaderPage> createState() => _HeaderPageState();
}

class _HeaderPageState extends State<HeaderPage> {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: Center(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: const [
            HeaderPart1(),
            ProfileImage(primeColor: secondaryColor, secondColor: primaryColor),
          ],
        ),
      ),
    );
  }
}
