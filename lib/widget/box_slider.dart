import 'package:flutter/material.dart';
import 'package:exdemo_v2/model/model_concept.dart';

class BoxSlider extends StatelessWidget{
  final List<Concept> concepts;
  BoxSlider({required this.concepts});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(7),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Text('신규테마'),
          Container(
            height: 120,
            child:  ListView(
              scrollDirection: Axis.horizontal,
              children: makeBoxImages(context, concepts),
            ),
          )
        ],
      ),
    );
  }
}

List<Widget> makeBoxImages(BuildContext context, List<Concept> concepts){
  List<Widget> results = [];
  for(var i =0; i< concepts.length; i++){
    results.add(InkWell(
      onTap: () {},
      child: Container(
        padding: EdgeInsets.only(right: 10),
        child: Align(
          alignment: Alignment.centerLeft,
          child: Image.asset('images/'+concepts[i].poster),
        ),
      ),
    ));
  }
  return results;
}