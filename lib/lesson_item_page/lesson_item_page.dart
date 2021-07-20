import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_apps/lessons_page/card_data.dart';

import 'package:percent_indicator/linear_percent_indicator.dart';

import 'rounded_button.dart';

class LessonItemPage extends StatefulWidget {
  static const String id = 'lesson_item_page';
  CardData? _cardData;

  LessonItemPage(CardData cardData) {
    _cardData = cardData;
  }
  @override
  _LessonItemPageState createState() => _LessonItemPageState(_cardData!);
}

class _LessonItemPageState extends State<LessonItemPage> {
  CardData? cardData;

  _LessonItemPageState(CardData cardData) {
    this.cardData = cardData;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
      ),
      body: Container(
        child: Column(
          children: [
            Stack(
              children: [
                Container(
                  height: MediaQuery.of(context).size.height / 2,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage('assets/images/back.png'),
                        fit: BoxFit.fill),
                  ),
                ),
                Container(
                  padding: EdgeInsets.fromLTRB(50, 130, 50, 0),
                  width: double.infinity,
                  child: Padding(
                    padding: EdgeInsets.symmetric(horizontal: 20),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Hero(
                          transitionOnUserGestures: true,
                          tag: cardData!,
                          child: Icon(cardData!.icon,
                              size: 40, color: Colors.white),
                        ),
                        Divider(
                          thickness: 2,
                          color: Colors.yellow,
                          endIndent: 200,
                        ),
                        Text(
                          cardData!.title,
                          style: TextStyle(fontSize: 40, color: Colors.white),
                        ),
                        Row(
                          children: [
                            LinearPercentIndicator(
                              width: 60.0,
                              lineHeight: 8.0,
                              percent: 0.2,
                              progressColor: Colors.orange,
                            ),
                            Text(
                              'Beginner',
                              style: TextStyle(color: Colors.white),
                            ),
                            Spacer(),
                            Text(
                              '\$20',
                              style: TextStyle(color: Colors.white),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
            Container(
              padding: EdgeInsets.symmetric(vertical: 30, horizontal: 50),
              child: Column(
                children: [
                  Text(
                    'Whether you’ve heard good stories or bad stories, one thing is for sure; you’ve definitely heard about budget airlines. While budget airlines have some drawbacks, they are definitely something you might want to consider taking advantage of. In this post, I’ll outline some things you need to know about budget airlines and how to take advantage of their incredibly low rates without getting slapped with hidden costs and fees. ',
                    style: TextStyle(height: 1.9),
                  ),
                  SizedBox(height: 25),
                  RoundedButton(onTap: () {}, title: 'TAKE THIS LESSON'),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
