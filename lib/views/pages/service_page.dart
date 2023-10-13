import 'package:ant_icons/ant_icons.dart';
import 'package:flutter/material.dart';
import 'package:profile/views/widgets/service/service_widget.dart';
import 'package:profile/views/widgets/text_title.dart';

class ServicePage extends StatefulWidget {
  const ServicePage({Key? key}) : super(key: key);

  @override
  State<ServicePage> createState() => _ServicePageState();
}

class _ServicePageState extends State<ServicePage> {
  final String subtitle1 =
      'Design your SQL database with industry leading cloud relational modeling and documentation tool. SqlDBM offers you an easy way to create an ERD of your ';
  final String subtitle2 =
      'Web developers create and maintain websites. They are also responsible for the site\'s technical aspects, such as its performance and capacity, which are measures of a website\'s speed and how much traffic the site can handle.';
  final String subtitle3 =
      'An app developer is a software developer who specializes in creating mobile applications. Mobile apps are designed to run on smartphones, tablets, or other ';

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const TextTitle(txt1: 'Our', txt2: 'Services'),
            const SizedBox(
              height: 50.0,
            ),
            SizedBox(
              width: double.infinity,
              height: 400.0,
              child: Center(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    ServiceWidget(
                        icon: Icons.code,
                        title: 'Web Developer',
                        subtitle: subtitle2),
                    ServiceWidget(
                        icon: AntIcons.android,
                        title: 'App Developer',
                        subtitle: subtitle3),
                    ServiceWidget(
                        icon: AntIcons.dashboard,
                        title: 'Database Designer',
                        subtitle: subtitle1),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
