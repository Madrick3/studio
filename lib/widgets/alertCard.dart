import 'package:flutter/material.dart';

class AlertCard extends StatefulWidget {
  AlertCard({Key key, this.index}) : super(key: key);

  final int index;

  @override
  _AlertCardState createState() => _AlertCardState();
}

class _AlertCardState extends State<AlertCard>{
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
        margin: EdgeInsets.fromLTRB(30, 3, 30, 3),
        color: Theme.of(context).colorScheme.surface,
        child: new ListTile(
          leading: new Padding(
            padding: const EdgeInsets.only(top: 8),
            child: new Column(children: <Widget>[
              new Icon(Icons.watch_later_outlined),
              new Text('8:30 AM',
                style: new TextStyle(color: Colors.black),
              ),
          ])),
          title: new Text('MOI Software Scrum',
              style: new TextStyle(color: Colors.black)),
          subtitle: new Text('Scrummaster: William Thomas'),
        ),
      )
    );
  }
}