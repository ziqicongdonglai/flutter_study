import 'package:flutter/material.dart';

class AppBarTabControllerPage extends StatefulWidget {
  const AppBarTabControllerPage({Key? key}) : super(key: key);

  @override
  State<AppBarTabControllerPage> createState() =>
      _AppBarTabControllerPageState();
}

class _AppBarTabControllerPageState extends State<AppBarTabControllerPage>
    with SingleTickerProviderStateMixin {
  late TabController _tabController;

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 3, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('顶部 tab切换'),
          bottom: TabBar(
            tabs: const <Widget>[
              Tab(icon: Icon(Icons.directions_bike)),
              Tab(icon: Icon(Icons.directions_boat)),
              Tab(icon: Icon(Icons.directions_bus)),
            ],
            controller: _tabController,
          ),
        ),
        body: TabBarView(
          controller: _tabController,
          children: const <Widget>[
            Center(child: Text('自行车')),
            Center(child: Text('船')),
            Center(child: Text('巴士')),
          ],
        ));
  }
}
