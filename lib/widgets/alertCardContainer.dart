import 'package:flutter/material.dart';
import 'alertCard.dart';

class AlertCardContainer extends StatefulWidget {
  AlertCardContainer({Key key}) : super(key: key);

  @override
  _AlertCardContainerState createState() => _AlertCardContainerState();
}

class _AlertCardContainerState extends State<AlertCardContainer>{
  @override
  Widget build(BuildContext context) {
    return(
      SliverList(
        delegate: SliverChildBuilderDelegate(
          (context, index) => AlertCard(index: index),
          childCount: 1),
    ));
  }
}