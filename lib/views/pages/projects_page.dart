import 'package:flutter/material.dart';
import 'package:profile/views/widgets/projects/project_card.dart';

import '../widgets/text_title.dart';

class ProjectsPage extends StatefulWidget {
  const ProjectsPage({Key? key}) : super(key: key);

  @override
  State<ProjectsPage> createState() => _ProjectsPageState();
}

class _ProjectsPageState extends State<ProjectsPage> {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const TextTitle(txt1: 'Latest', txt2: 'Projects'),
            // const SizedBox(
            //   height: 40.0,
            // ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: const [
                Spacer(flex: 3),
                ProjectCard(image: '1.jpg'),
                Spacer(),
                ProjectCard(image: '2.jpg'),
                Spacer(),
                ProjectCard(image: '3.jpg'),
                Spacer(flex: 3),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: const [
                Spacer(flex: 3),
                ProjectCard(image: '4.jpg'),
                Spacer(),
                ProjectCard(image: '5.jpg'),
                Spacer(),
                ProjectCard(image: '6.jpg'),
                Spacer(flex: 3),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
