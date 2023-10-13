import 'package:flutter/material.dart';
import 'package:profile/constraint/theme.dart';
import 'package:profile/views/pages/about_page.dart';
import 'package:profile/views/pages/header_page.dart';
import 'package:profile/views/widgets/nav_bar.dart';

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
      body: Container(
        color: background1,
        padding: const EdgeInsets.only(top: 10.0),
        child: Column(
          children: [
            NavBar1(pageController: _pageController),
            SizedBox(
              width: double.infinity,
              height: MediaQuery.of(context).size.height / 1.08,
              child: PageView(
                controller: _pageController,
                scrollDirection: Axis.vertical,
                children: const [
                  HeaderPage(),
                  AboutPage(),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
