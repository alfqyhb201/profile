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
            Align(
              alignment: Alignment.center,
              child: SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  // crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: const [
                    // Spacer(),
                    ProjectCard(image: '1.jpg'),
                    SizedBox(
                      width: 20.0,
                    ),
                    ProjectCard(image: '2.jpg'),
                    SizedBox(
                      width: 20.0,
                    ),
                    ProjectCard(image: '3.jpg'),
                    SizedBox(
                      width: 20.0,
                    ),
                  ],
                ),
              ),
            ),
            Align(
              alignment: Alignment.center,
              child: SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: const [
                    ProjectCard(image: '4.jpg'),
                    SizedBox(
                      width: 20.0,
                    ),
                    ProjectCard(image: '5.jpg'),
                    SizedBox(
                      width: 20.0,
                    ),
                    ProjectCard(image: '6.jpg'),
                    SizedBox(
                      width: 20.0,
                    ),
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
