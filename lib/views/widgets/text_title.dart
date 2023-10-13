import 'package:flutter/material.dart';

import '../../constraint/theme.dart';

class TextTitle extends StatelessWidget {
  const TextTitle({Key? key, required this.txt1, required this.txt2})
      : super(key: key);
  final String txt1;
  final String txt2;
  @override
  Widget build(BuildContext context) {
    return RichText(
      text: TextSpan(
        text: 'Our ',
        style: boldTextStyle,
        children: [
          TextSpan(
            text: 'Services',
            style: boldTextStyle.copyWith(color: secondaryColor),
          ),
        ],
      ),
    );
  }
}
