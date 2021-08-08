import 'package:exdemo_v2/screen/home_screen.dart';
import 'package:flutter/material.dart';
import 'package:exdemo_v2/widget/bottom_bar.dart';
void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget{
  MyAppState createState() => MyAppState();

}

class MyAppState extends State<MyApp> {
  //TabController controller;
  @override
  Widget build(BuildContext context){
    return MaterialApp(
        title: 'Keys_demo',
        theme: ThemeData(
          brightness: Brightness.dark,
          primaryColor: Colors.black,
          accentColor: Colors.white,
    ),
    home: DefaultTabController(length: 4, child: Scaffold(body: TabBarView(physics: NeverScrollableScrollPhysics(),
      children: <Widget>[
        HomeScreen(),
        Container(
          child:  Center(
            child: Text('내주변'),
          ),
        ),
        Container(
          child:  Center(
            child: Text('찜'),
          ),
        ),
        Container(
          child:  Center(
            child: Text('커뮤니티'),
          ),
        ),
    ],
    ),
      bottomNavigationBar: Bottom(),
    ),
    ),
    );
  }

}