import 'package:flutter/material.dart';

import '../../../constraint/theme.dart';

class MobileNavBar extends StatefulWidget {
  final PageController pageController;
  const MobileNavBar({Key? key, required this.pageController})
      : super(key: key);

  @override
  State<MobileNavBar> createState() => _MobileNavBarState();
}

class _MobileNavBarState extends State<MobileNavBar> {
  late PageController pacon;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    pacon = widget.pageController;
  }

  @override
  Widget build(BuildContext context) {
    final deviceWidth = MediaQuery.of(context).size.width;
    Widget inlineNavBar() {
      return Expanded(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            GestureDetector(
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
            GestureDetector(
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
            GestureDetector(
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
            GestureDetector(
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
            const Text(
              'Contact',
              style: navBarTextStyle,
            ),
          ],
        ),
      );
    }

    Widget popUpNavBar() {
      return PopupMenuButton(
        icon: const Icon(Icons.menu_sharp),
        onSelected: (value) {
          ScaffoldState().openDrawer();
        },
        itemBuilder: (context) {
          return [
            PopupMenuItem(
              value: 0,
              child: Text(
                'Home',
                style: navBarTextStyle.copyWith(
                  // fontSize: 16.0,
                  color: secondaryColor,
                  // fontWeight: FontWeight.bold,
                ),
              ),
            ),
            PopupMenuItem(
              value: 1,
              child: Text(
                'Contact',
                style: navBarTextStyle.copyWith(
                  // fontSize: 16.0,
                  color: secondaryColor,
                  // fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ];
        },
      );
    }

    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Row(
        children: [
          const Expanded(
            child: Text(
              'Profile',
              style: logoTextStyle,
            ),
          ),
          deviceWidth < 500 ? popUpNavBar() : inlineNavBar(),
        ],
      ),
    );
  }
}
