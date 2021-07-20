import 'package:flutter/material.dart';
import 'package:flutter_apps/util/constants.dart';
import 'package:flutter_apps/lesson_item_page/lesson_item_page.dart';
import 'package:flutter_apps/lessons_page/lessons_page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: DefaultTabController(
        length: 4,
        child: Scaffold(
          body: TabBarViewWidget(),
          bottomNavigationBar: TabBarWidget(),
        ),
      ),
    );
  }
}

class TabBarWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: mainColor,
      height: 65,
      child: TabBar(
        labelColor: Colors.orange,
        unselectedLabelColor: Colors.white,
        indicatorSize: TabBarIndicatorSize.label,
        indicatorColor: Colors.orange,
        tabs: [
          Tab(icon: Icon(Icons.directions_car)),
          Tab(icon: Icon(Icons.directions_transit)),
          Tab(icon: Icon(Icons.directions_bike)),
          Tab(icon: Icon(Icons.directions_bike)),
        ],
      ),
    );
  }
}

class TabBarViewWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return TabBarView(
      children: [
        LessonsPage(),
        Icon(Icons.directions_transit),
        Icon(Icons.directions_bike),
        Icon(Icons.directions_bike),
      ],
    );
  }
}
