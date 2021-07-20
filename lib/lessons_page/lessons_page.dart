import 'package:flutter/material.dart';
import 'package:flutter_apps/lessons_page/card_data.dart';
import 'package:flutter_apps/util/constants.dart';
import 'package:flutter_apps/lesson_item_page/lesson_item_page.dart';
import 'package:percent_indicator/linear_percent_indicator.dart';

class LessonsPage extends StatefulWidget {
  @override
  _LessonsPageState createState() => _LessonsPageState();
}

class _LessonsPageState extends State<LessonsPage> {
  static const String id = 'lessons_page';
  final List<CardData> itemData = [
    CardData(Icons.directions_car, 'Introduction to driving'),
    CardData(Icons.two_wheeler, 'Observation at Junction'),
    CardData(Icons.access_time_rounded, 'Reverse Parallel Parking'),
    CardData(Icons.add_shopping_cart, 'Reversing Around Corner'),
    CardData(Icons.car_rental, 'Incorrect Use of Signals'),
    CardData(Icons.local_car_wash_outlined, 'Test1'),
    CardData(Icons.local_car_wash_outlined, 'Test2'),
    CardData(Icons.local_car_wash_outlined, 'Test3'),
    CardData(Icons.local_car_wash_outlined, 'Test4'),
    CardData(Icons.local_car_wash_outlined, 'Test5'),
    CardData(Icons.local_car_wash_outlined, 'Test6'),
    CardData(Icons.local_car_wash_outlined, 'Test7'),
    CardData(Icons.local_car_wash_outlined, 'Test8'),
  ];

  Widget CardLesson(BuildContext context, int index) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => LessonItemPage(itemData[index]),
          ),
        );
      },
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: itemColor,
        ),
        width: double.infinity,
        padding: EdgeInsets.symmetric(vertical: 25, horizontal: 20),
        margin: EdgeInsets.symmetric(vertical: 10),
        child: Row(
          children: [
            Hero(
              tag: itemData[index],
              child: Icon(
                itemData[index].icon,
                size: 50,
                color: Colors.white,
              ),
            ),
            VerticalDivider(
              color: Colors.grey,
              indent: 0,
              endIndent: 0,
              thickness: 1,
              width: 40,
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  itemData[index].title,
                  style: TextStyle(color: Colors.white, fontSize: 17),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    LinearPercentIndicator(
                      width: 60.0,
                      lineHeight: 8.0,
                      percent: 0.2,
                      progressColor: Colors.orange,
                    ),
                    Text(
                      'Beginner',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 12,
                      ),
                    ),
                  ],
                ),
              ],
            ),
            Spacer(),
            Icon(
              Icons.chevron_right,
              color: Colors.white,
            ),
          ],
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: mainColor,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        title: Text('Lessons'),
        centerTitle: true,
        actions: [
          Padding(
            padding: EdgeInsets.only(right: 10),
            child: Icon(Icons.menu),
          ),
        ],
      ),
      body: Container(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 10),

          child: ListView.builder(
            itemCount: itemData.length,
            itemBuilder: (context, index) => CardLesson(context, index),
          ),
        ),
      ),
    );
  }
}
