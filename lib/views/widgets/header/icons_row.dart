import 'package:ant_icons/ant_icons.dart';
import 'package:flutter/material.dart';

import '../../../constraint/theme.dart';

class IconsRow extends StatelessWidget {
  const IconsRow({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: const [
        Icon(
          Icons.facebook,
          color: secondaryColor,
        ),
        SizedBox(
          width: 10.0,
        ),
        Icon(AntIcons.github, color: secondaryColor),
        SizedBox(
          width: 10.0,
        ),
        Icon(
          AntIcons.youtube,
          color: secondaryColor,
        ),
      ],
    );
  }
}
