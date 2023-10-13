import 'package:flutter/material.dart';

import '../../../constraint/theme.dart';

class ServiceWidget extends StatelessWidget {
  const ServiceWidget(
      {Key? key,
      required this.icon,
      required this.title,
      required this.subtitle})
      : super(key: key);
  final IconData icon;
  final String title;
  final String subtitle;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 300.0,
      height: 350.0,
      decoration: BoxDecoration(
        color: background2,
        borderRadius: BorderRadius.circular(10.0),
      ),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            const SizedBox(
              height: 20.0,
            ),
            Icon(
              icon,
              size: 50.0,
              color: secondaryColor,
            ),
            Text(
              title,
              style: mediumTextStyle,
            ),
            const SizedBox(
              height: 10.0,
            ),
            Text(
              subtitle,
              style: smallTextStyle,
              textAlign: TextAlign.center,
              softWrap: true,
            ),
            const Spacer(),
            MaterialButton(
              onPressed: () {},
              color: secondaryColor,
              elevation: 10.0,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(30.0),
              ),
              padding:
                  const EdgeInsets.symmetric(vertical: 20.0, horizontal: 50.0),
              child: const Text(
                'Read More',
                style: TextStyle(
                  fontFamily: 'sans-serif',
                  fontSize: 16.0,
                  color: background1,
                ),
              ),
            ),
            const SizedBox(
              height: 20.0,
            ),
          ],
        ),
      ),
    );
  }
}
