import 'package:flutter/material.dart';

class TabBarWidget extends StatefulWidget {
  const TabBarWidget({Key? key}) : super(key: key);

  @override
  State<TabBarWidget> createState() => _TabBarWidgetState();
}

class _TabBarWidgetState extends State<TabBarWidget> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        backgroundColor: Colors.blueGrey,
        appBar: AppBar(),
        body: Column(
          children: const [
            TabBar(
                indicatorColor: Colors.greenAccent,
                indicatorWeight: 3,
                tabs: [
                  Tab(
                    text: 'Home',
                    icon: Icon(Icons.home),
                  ),
                  Tab(
                    text: 'market',
                    icon: Icon(Icons.shopping_cart),
                  ),
                ]),
            Expanded(
                child: Center(
              child: TabBarView(children: [
                Center(
                  child: Text('home'),
                ),
                Center(
                  child: Text('market'),
                ),
              ]),
            ))
          ],
        ),
      ),
    );
  }
}
