import 'package:flutter/material.dart';

class TaskCard extends StatelessWidget {
  TaskCard({Key key, this.index}) : super(key: key);
  final int index;

  @override
  Widget build(BuildContext context) {
    return(
      Card(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10), // if you need this
          side: BorderSide(
            color: Theme.of(context).colorScheme.primary,
            width: 1,
          ),
        ),
        margin: EdgeInsets.fromLTRB(5, 5, 5, 5),
        color: Theme.of(context).colorScheme.surface,
        child: new ListTile(
          leading:
            index == 0 ? new Icon(Icons.access_time_rounded) : // To do
            index == 1 ? new Icon(Icons.autorenew) : // In Progress
            new Icon(Icons.check_circle_rounded) //done
          ,
          title:
            index == 0 ? new Text('To Do') : // To do
            index == 1 ? new Text('Active') : // In Progress
            new Text('Done'), //done
          //subtitle: new Text('Peer review: Piper'),
        ),
      )
    );
  }
}