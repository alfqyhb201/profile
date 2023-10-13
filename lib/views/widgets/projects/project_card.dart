import 'package:flutter/material.dart';
import 'package:profile/constraint/theme.dart';

class ProjectCard extends StatelessWidget {
  const ProjectCard({Key? key, required this.image}) : super(key: key);
  final String image;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 300.0,
      height: 200.0,
      child: Card(
        elevation: 10.0,
        clipBehavior: Clip.antiAlias,
        shadowColor: secondaryColor,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(20.0),
        ),
        child: Image.asset(
          'asset/$image',
          fit: BoxFit.fill,
        ),
      ),
    );
  }
}
