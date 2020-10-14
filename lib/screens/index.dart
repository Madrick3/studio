import 'package:flutter/material.dart';
import '../widgets/accountBar.dart';
import '../widgets/alertCardContainer.dart';
import '../widgets/sliverHeadline.dart';
import '../widgets/taskCardContainer.dart';
import '../widgets/projectCardContainer.dart';
import '../services/googleSignIn.dart';
import 'package:firebase_auth/firebase_auth.dart';



class Index extends StatefulWidget {
  Index({Key key}) : super(key: key);
  @override
  _IndexState createState() => _IndexState();
}

class _IndexState extends State<Index> with SingleTickerProviderStateMixin {

  TabController _tabController;
  int _selectedIndex = 0;
  User user;


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
        body: isSignedIn == false ? CustomScrollView(
          slivers: <Widget>[
            AccountBar(tabController: _tabController, accountName: 'Not Signed In', ceh: 125),
            SliverHeadline(title: 'Please Sign in'),
          ],

        ) : _selectedIndex == 0 ? CustomScrollView(
          slivers: <Widget>[
            AccountBar(tabController: _tabController, accountName: 'Placeholder', ceh: 125),
            SliverHeadline(title: 'Alerts'),
            AlertCardContainer(),
            SliverHeadline(title: 'Tasks', subtitle: 'MOI SW'),
            TaskCardContainer(),
            SliverHeadline(title: 'Projects'),
            ProjectCardContainer(),
          ],
        ) : _selectedIndex == 1 ? CustomScrollView(
          slivers: <Widget>[
            AccountBar(tabController: _tabController, accountName: 'Placeholder', ceh: 125),
            SliverHeadline(title: 'LOL Not Implemented'),
          ],
        ) : CustomScrollView(
          slivers: <Widget>[
            AccountBar(tabController: _tabController, accountName: 'Placeholder', ceh: 125),
            SliverHeadline(title: 'Schedule'),
          ],
        ),
      ),
    );
  }
}