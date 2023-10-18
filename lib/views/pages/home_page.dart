import 'package:flutter/material.dart';
import 'package:profile/constraint/theme.dart';
import 'package:profile/views/pages/about_page.dart';
import 'package:profile/views/pages/header_page.dart';
import 'package:profile/views/pages/projects_page.dart';
import 'package:profile/views/pages/service_page.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final PageController _pageController = PageController(
    initialPage: 0,
  );

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _pageController.initialPage;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // backgroundColor: background1,
      appBar: AppBar(
        backgroundColor: background1,
        title: const Text(
          'Profile',
          style: logoTextStyle,
        ),
      ),
      drawerEnableOpenDragGesture: true,
      drawer: Drawer(
        // width: 60.0,

        backgroundColor: background1,
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
              SizedBox(
                height: 70.0,
                child: Center(
                  child: Text(
                    'Profile',
                    style: logoTextStyle.copyWith(color: secondaryColor),
                  ),
                ),
              ),
              const Divider(
                height: 3.0,
                color: Colors.white,
                indent: 20.0,
                endIndent: 20.0,
              ),
              const SizedBox(
                height: 20.0,
              ),
              Card(
                color: background2,
                child: ListTile(
                  title: const Center(
                    child: Text(
                      'Home',
                      style: navBarTextStyle,
                    ),
                  ),
                  onTap: () {
                    Navigator.pop(context);
                    _pageController.animateToPage(0,
                        duration: const Duration(milliseconds: 300),
                        curve: Curves.easeIn);
                  },
                ),
              ),
              Card(
                color: background2,
                child: ListTile(
                  title: const Center(
                    child: Text(
                      'About',
                      style: navBarTextStyle,
                    ),
                  ),
                  onTap: () {
                    Navigator.pop(context);
                    _pageController.animateToPage(1,
                        duration: const Duration(milliseconds: 300),
                        curve: Curves.easeIn);
                  },
                ),
              ),
              Card(
                color: background2,
                child: ListTile(
                  title: const Center(
                    child: Text(
                      'Services',
                      style: navBarTextStyle,
                    ),
                  ),
                  onTap: () {
                    Navigator.pop(context);
                    _pageController.animateToPage(2,
                        duration: const Duration(milliseconds: 300),
                        curve: Curves.easeIn);
                  },
                ),
              ),
              Card(
                color: background2,
                child: ListTile(
                  title: const Center(
                    child: Text(
                      'Projects',
                      style: navBarTextStyle,
                    ),
                  ),
                  onTap: () {
                    Navigator.pop(context);
                    _pageController.animateToPage(3,
                        duration: const Duration(milliseconds: 300),
                        curve: Curves.easeIn);
                  },
                ),
              ),
            ],
          ),
        ),
      ),
      body: Container(
        color: background1,
        // padding: const EdgeInsets.only(top: 10.0),
        child: Column(
          children: [
            // deviceWidth < mobileSize
            //     ? MobileNavBar(pageController: _pageController)
            //     : WebNavBar(pageController: _pageController),
            Expanded(
              child: PageView(
                controller: _pageController,
                scrollDirection: Axis.vertical,
                children: const [
                  HeaderPage(),
                  AboutPage(),
                  ServicePage(),
                  ProjectsPage(),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
