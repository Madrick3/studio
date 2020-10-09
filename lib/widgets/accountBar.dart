import 'package:flutter/material.dart';

class AccountBar extends StatefulWidget{
  AccountBar({Key key, @required this.tabController, this.accountName, this.ceh}) : super(key: key);
  TabController tabController;
  String accountName;
  double ceh;
  @override
  _AccountBarState createState() => _AccountBarState();
}

class _AccountBarState extends State<AccountBar>{

  double constantExpandedHeight;
  var top = 0.0;
  var maxTop = 0.0;
  var barrier = 0.0;
  var index = 0;

  @override
  void initState() {
    constantExpandedHeight = widget.ceh;
    super.initState();
  }

  void _onItemTapped(int index) {
    setState(() {
      index = widget.tabController.index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return SliverAppBar(
            shape: ContinuousRectangleBorder(
              borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(60), bottomRight: Radius.circular(60),
              )
            ),
            floating: true,
            pinned: true,
            snap: true,
            expandedHeight: constantExpandedHeight,
            actions: <Widget>[
              IconButton(
                icon: const Icon(Icons.search),
                tooltip: 'Search',
                onPressed: () => { /* ... */ },
              ),
              IconButton(
                icon: const Icon(Icons.settings),
                tooltip: 'Settings',
                onPressed: () => { },
              )
            ],
            flexibleSpace: LayoutBuilder(
              builder: (BuildContext context, BoxConstraints constraints) {
                top = constraints.biggest.height;
                maxTop = top > maxTop ? top : maxTop;
                barrier = MediaQuery.of(context).padding.top + kToolbarHeight;
                return (
                      FlexibleSpaceBar(
                        collapseMode: CollapseMode.pin,
                        centerTitle: true,
                        background: AnimatedOpacity(
                          duration: Duration(milliseconds: 100),
                          opacity: top > barrier ? (top - barrier)/(maxTop-barrier) : 0,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: <Widget>[
                              Container(
                                margin: EdgeInsets.only(top:0),
                                padding: EdgeInsets.only(
                                  left: 0.0, right: 16.0),
                                child: CircleAvatar(
                                  radius: 35,
                                  backgroundColor: Colors.red,
                                  child: CircleAvatar(
                                    radius: 32,
                                    backgroundColor: Theme.of(context).colorScheme.primary,
                                    child: CircleAvatar(
                                      radius: 30,
                                      backgroundImage: AssetImage('images/batman.jpg'),
                                    ),
                                  )
                                )
                              ),
                              Column(
                                children: <Widget>[
                                  Padding(
                                    padding: const EdgeInsets.only(top: 50),
                                    child: Text(
                                      'Patrick Flaherty',
                                      textAlign: TextAlign.center,
                                      style: TextStyle(
                                        fontWeight: FontWeight.w700,
                                        fontSize: 24
                                      ),
                                    )
                                  ),
                                  Text(
                                    'Full Stack Software Engineer',
                                    textAlign: TextAlign.center,
                                    style: TextStyle(
                                      fontWeight: FontWeight.w600,
                                      fontSize: 12
                                    ),
                                  )
                                ],
                              ),
                              Container(
                                margin: EdgeInsets.only(right: 30.0),
                                child: Text("                 "),
                              )
                            ],
                        )
                      )
                    )
                );
              }
            ),
            bottom: TabBar(
              controller: widget.tabController,
              onTap: _onItemTapped,
              indicatorWeight: 5.0,
              tabs: <Widget>[
                Tab(
                  text: 'Dashboard',
                ), Tab(
                text: 'Activity',
                ), Tab(
                  text: 'Schedule',
                )
              ]
            )
        );
  }
}

