import 'package:flutter/material.dart';
import 'projectCard.dart';
import 'taskCard.dart';

class ProjectCardContainer extends StatefulWidget {
  ProjectCardContainer({Key key}) : super(key: key);

  @override
  _ProjectCardContainerState createState() => _ProjectCardContainerState();
}

class _ProjectCardContainerState extends State<ProjectCardContainer>{
  @override
  Widget build(BuildContext context) {
    return(
        SliverPadding(
          padding: const EdgeInsets.only(left: 20, right: 20),
          sliver: SliverGrid(
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
              mainAxisSpacing: 25.0,
              crossAxisSpacing: 0.0,
              childAspectRatio: 0.8,

            ),

            delegate: SliverChildBuilderDelegate(
                    (context, index) => ProjectCard(index: index),
                childCount: 4
            ),
          )
        ));//return
  }
}