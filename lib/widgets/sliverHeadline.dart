import 'package:flutter/material.dart';

class SliverHeadline extends StatelessWidget {
  SliverHeadline({Key key, this.title, this.subtitle}) : super(key: key);

  final String title;
  final String subtitle;

  @override
  Widget build(BuildContext context){
    return(SliverList(
        delegate: SliverChildBuilderDelegate(
          (context, index) => Padding(
            padding: const EdgeInsets.fromLTRB(5, 10, 5, 5),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                Text(this.title,
                    textAlign: TextAlign.left,
                    style: new TextStyle(
                      fontSize: 20,
                      color: Colors.black,
                      fontWeight: FontWeight.w600,
                    )),
                subtitle == null ? Text("") : Text(this.subtitle,
                    textAlign: TextAlign.left,
                    style: new TextStyle(
                      fontSize: 14,
                      color: Colors.black,
                      fontWeight: FontWeight.normal,
                    )),
                Text(""),
                title == 'Alerts' ? Icon(Icons.circle_notifications) :
                title == 'Projects' ? Icon(Icons.architecture) :
                title == 'Tasks' ? Icon(Icons.assignment): Text(""),
              ],
            ),
          ),
        childCount: 1)
    ));
  }
}