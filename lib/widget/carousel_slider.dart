import 'package:carousel_slider/carousel_slider.dart' ;
import 'package:exdemo_v2/model/model_concept.dart';
import 'package:flutter/material.dart';

class CarouselImage extends StatefulWidget {
  final List<Concept> concepts;
  CarouselImage({required this.concepts});
  _CarouselImageState createState() => _CarouselImageState();
}

class _CarouselImageState extends State<CarouselImage> {
  List<Concept>? concepts;
  List<Widget>? images;
  List<String>? keywords;
  List<bool>? likes;
  int _currentPage = 0;
  String? _currentKeyword;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    concepts = widget.concepts;
    images = concepts?.map((m) => Image.asset('./images/' + m.poster)).toList();
    keywords = concepts?.map((m) => m.keyword).toList();
    likes = concepts?.map((m) => m.like).toList();
    _currentKeyword = keywords?[0];
  }

  @override
  Widget build(BuildContext context) {
    return Container(

      child: Column(
        children: <Widget>[
          Container(
            padding: EdgeInsets.all(30),
            child: Text('혹시 여긴 어떨까요?', textAlign: TextAlign.start,
                style: TextStyle(fontSize: 14)),
          ),
          CarouselSlider(
            items: images,
            options: CarouselOptions(onPageChanged: (index, reason) {
              setState(() {
                _currentPage = index;
                _currentKeyword = keywords?[_currentPage];
              });
            }),),
          Container(
            padding: EdgeInsets.fromLTRB(0, 10, 0, 3),
            child: Text(
              _currentKeyword!,
              style: TextStyle(fontSize: 11),
            ),
          ),
          Container(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                likes![_currentPage]
                    ? IconButton(
                    icon: Icon(Icons.favorite),
                    onPressed: () {})
                    : IconButton(
                  icon: Icon(Icons.favorite_border_outlined),
                  onPressed: () {},
                ),

              ],
            ),
          )

        ],
      ),
    );
  }

  List<Widget> makeIndicator(List list, int _currentPage) {
    List<Widget> results = [];
    for (var i = 0; i < list.length; i++) {
      results.add(Container(
        width: 8,
        height: 8,
        margin: EdgeInsets.symmetric(vertical: 10.0, horizontal: 2.0),
        decoration: BoxDecoration(
            shape: BoxShape.circle,
            color: _currentPage == i
                ? Color.fromRGBO(255, 255, 255, 0.9)
                : Color.fromRGBO(255, 255, 255, 0.4)),
      ));
    }
    return results;
  }

}