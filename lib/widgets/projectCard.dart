import 'package:flutter/material.dart';

class ProjectCard extends StatefulWidget {
  ProjectCard({Key key, this.index}) : super(key: key);
  final int index;

  @override
  _ProjectCardState createState() => _ProjectCardState();
}

class _ProjectCardState extends State<ProjectCard>{
  static List<Color> tileColors = [Colors.indigoAccent.shade100, Colors.orangeAccent, Colors.red, Colors.green.shade500, Colors.green.shade50];
  @override
  Widget build(BuildContext context) {
    return(
        Card(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(30), // if you need this
          ),
          margin: EdgeInsets.fromLTRB(15, 3, 15, 3),
          color: tileColors[widget.index%tileColors.length],
          child: new Column(
            children: <Widget>[
              Icon(Icons.account_tree),
              Text("PROJECT"),
            ]
          ),
        )
    );
  }
}