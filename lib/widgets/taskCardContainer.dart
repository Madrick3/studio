import 'package:flutter/material.dart';
import 'taskCard.dart';

class TaskCardContainer extends StatefulWidget {
  TaskCardContainer({Key key}) : super(key: key);

  @override
  _TaskCardContainerState createState() => _TaskCardContainerState();
}

class _TaskCardContainerState extends State<TaskCardContainer>{
  @override
  Widget build(BuildContext context) {
    return(
      SliverPadding(
        padding: const EdgeInsets.only(left: 30, right: 30),
        sliver: SliverGrid(
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 3,
            mainAxisSpacing: 25.0,
            crossAxisSpacing: 0.0,
            childAspectRatio: 1.5,
          ),
          delegate: SliverChildBuilderDelegate(
            (context, index) => TaskCard(index: index),
            childCount: 3
          ),
        )
      )
    ); //return
  }
}