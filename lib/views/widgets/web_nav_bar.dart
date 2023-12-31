import 'package:flutter/material.dart';

import '../../constraint/theme.dart';

class WebNavBar extends StatefulWidget {
  final PageController pageController;
  const WebNavBar({Key? key, required this.pageController}) : super(key: key);

  @override
  State<WebNavBar> createState() => _WebNavBarState();
}

class _WebNavBarState extends State<WebNavBar> {
  late PageController pacon;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    pacon = widget.pageController;
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Row(
        children: [
          const Expanded(
            flex: 1,
            child: Text(
              'Profile',
              style: logoTextStyle,
            ),
          ),
          Expanded(
            child: Row(
              children: [
                Expanded(
                  child: GestureDetector(
                    onTap: () {
                      pacon.animateToPage(0,
                          duration: const Duration(milliseconds: 500),
                          curve: Curves.easeIn);
                    },
                    child: Text(
                      'Home',
                      style: navBarTextStyle.copyWith(
                        // fontSize: 16.0,
                        color: secondaryColor,
                        // fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),
                Expanded(
                  child: GestureDetector(
                    onTap: () {
                      pacon.animateToPage(1,
                          duration: const Duration(milliseconds: 500),
                          curve: Curves.easeIn);
                    },
                    child: const Text(
                      'About',
                      style: navBarTextStyle,
                    ),
                  ),
                ),
                Expanded(
                  child: GestureDetector(
                    onTap: () {
                      pacon.animateToPage(2,
                          duration: const Duration(milliseconds: 500),
                          curve: Curves.easeIn);
                    },
                    child: const Text(
                      'Services',
                      style: navBarTextStyle,
                    ),
                  ),
                ),
                Expanded(
                  child: GestureDetector(
                    onTap: () {
                      pacon.animateToPage(3,
                          duration: const Duration(milliseconds: 500),
                          curve: Curves.easeIn);
                    },
                    child: const Text(
                      'Profile',
                      style: navBarTextStyle,
                    ),
                  ),
                ),
                const Expanded(
                  child: Text(
                    'Contact',
                    style: navBarTextStyle,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
