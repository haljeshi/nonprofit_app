import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:oscharity/constants.dart';
import 'package:oscharity/components/goal_card.dart';
import 'package:oscharity/models/goal.dart';

class GoalsScreen extends StatefulWidget {
  @override
  _GoalsScreenState createState() => _GoalsScreenState();
}

class _GoalsScreenState extends State<GoalsScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kAppMainColor.shade100,
      body: Padding(
        padding: const EdgeInsets.symmetric(vertical: 60),
        child: CarouselSlider(
          options: CarouselOptions(
            height: MediaQuery.of(context).size.height,
            viewportFraction: 0.7,
            enableInfiniteScroll: false,
            enlargeCenterPage: true,
          ),
          items: <Widget>[
            GoalCard(
              goal: Goal(
                imageMain: 'assets/orphan.jpg',
                title: "كافل يتيم",
                shortDesc: 'هناك حقيقة مثبتة منذ زمن طويل وهي أن المحتوى المقروء لصفحة ما سيلهي القارئ عن التركيز على الشكل الخارجي للنص أو شكل توضع الفقرات في الصفحة التي يقرأها. ولذلك يتم استخدام طريقة لوريم إيبسوم لأنها تعطي توزيعاَ طبيعياَ -إلى حد ما- للأحرف عوضاً عن استخدام',
              ),
            ),
            GoalCard(
              goal: Goal(
                imageMain: 'assets/poor-house.png',
                title: "إصلاح المنازل",
                shortDesc: 'هناك حقيقة مثبتة منذ زمن طويل وهي أن المحتوى المقروء لصفحة ما سيلهي القارئ عن التركيز على الشكل الخارجي للنص أو شكل توضع الفقرات في الصفحة التي يقرأها. ولذلك يتم استخدام طريقة لوريم إيبسوم لأنها تعطي توزيعاَ طبيعياَ -إلى حد ما- للأحرف عوضاً عن استخدام',
              ),
            ),
            GoalCard(
              goal: Goal(
                imageMain: 'assets/education.jpg',
                title: "المساعدات التعليمية",
                shortDesc: 'هناك حقيقة مثبتة منذ زمن طويل وهي أن المحتوى المقروء لصفحة ما سيلهي القارئ عن التركيز على الشكل الخارجي للنص أو شكل توضع الفقرات في الصفحة التي يقرأها. ولذلك يتم استخدام طريقة لوريم إيبسوم لأنها تعطي توزيعاَ طبيعياَ -إلى حد ما- للأحرف عوضاً عن استخدام',
              ),
            ),
          ],
        ),
      ),
    );
  }
}


