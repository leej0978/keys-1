import 'package:exdemo_v2/model/model_concept.dart';
import 'package:exdemo_v2/widget/box_slider.dart';
import 'package:exdemo_v2/widget/carousel_slider.dart';
import 'package:exdemo_v2/widget/circle_slider.dart';
import 'package:flutter/material.dart';


class HomeScreen extends StatefulWidget{
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  List<Concept> concepts = [
    Concept.fromMap({
      'title': '데모포스터1',
      'keyword': '스릴러/공포/추리',
      'poster': 'test_concept_2.png',
      'like': false
    }),
    Concept.fromMap({
      'title': '데모포스터1',
      'keyword': '추리',
      'poster': 'test_concept_3.jpg',
      'like': false
    }),
    Concept.fromMap({
      'title': '데모포스터1',
      'keyword': '일상',
      'poster': 'test_concept_4.png',
      'like': false
    }),
    Concept.fromMap({
      'title': '데모포스터1',
      'keyword': '추리',
      'poster': 'test_concept_3.jpg',
      'like': false
    }),
  ];
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: <Widget>[
        Stack(
          children: <Widget>[
            CarouselImage(concepts: concepts),
            TopBar(),
          ],
        ),
        BoxSlider(concepts: concepts),
        CircleSilder(concepts: concepts),
      ],
    );
  }
}

class TopBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.fromLTRB(20,7,20,20),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          Image.asset(
            'images/choon.png',
            fit: BoxFit.contain,
            height: 25,
          ),

          Container(
            padding: EdgeInsets.only(right: 1),
            child: Text(
              '알림',
              style: TextStyle(fontSize: 14),
            ),
          ),
        ],
      ),
    );
  }
}