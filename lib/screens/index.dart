import 'package:flutter/material.dart';
import '../widgets/accountBar.dart';
import '../widgets/alertCardContainer.dart';
import '../widgets/sliverHeadline.dart';
import '../widgets/taskCardContainer.dart';
import '../widgets/projectCardContainer.dart';

class Index extends StatefulWidget {
  Index({Key key, this.title, this.barcode}) : super(key: key);
  final String title;
  final String barcode;
  @override
  _IndexState createState() => _IndexState();
}

class _IndexState extends State<Index> with SingleTickerProviderStateMixin {

  TabController _tabController;
  int _selectedIndex = 0;

  @override
  void initState() {
    _tabController = TabController(vsync: this, length: 3);
    _tabController.addListener(() {
      setState(() {
        _selectedIndex = _tabController.index;
      });
      //print("Selected Index: " + _tabController.index.toString());
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        body: _selectedIndex == 0 ? CustomScrollView(
          slivers: <Widget>[
            AccountBar(tabController: _tabController, accountName: 'Patrick Flaherty', ceh: 125),
            SliverHeadline(title: 'Alerts'),
            AlertCardContainer(),
            SliverHeadline(title: 'Tasks', subtitle: 'MOI SW'),
            TaskCardContainer(),
            SliverHeadline(title: 'Projects'),
            ProjectCardContainer(),
          ],
        ) : _selectedIndex == 1 ? CustomScrollView(
          slivers: <Widget>[
            AccountBar(tabController: _tabController, accountName: 'Patrick Flaherty', ceh: 125),
            SliverHeadline(title: 'LOL Not Implemented'),
          ],
        ) : CustomScrollView(
          slivers: <Widget>[
            AccountBar(tabController: _tabController, accountName: 'Patrick Flaherty', ceh: 125),
            SliverHeadline(title: 'Schedule'),
          ],
        ),
      ),
    );
  }
}