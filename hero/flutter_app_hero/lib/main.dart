import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(

        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: HeroPage(),
    );
  }
}

class HeroPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar : AppBar(
        title: Text('Hero'),
      ),
      body:Center(
        child: GestureDetector(
          onTap: (){
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => HeroDetailPage(),
              ),
            );
          },
          child: Hero(
            tag: 'image',
            child:Image.asset(
              'images/2020.08.02.(일)_플러터스터디_5번째.PNG',
              width:100,
              height:100,
            )
          ),
        ),
      ),
    );
  }
}

class HeroDetailPage extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar : AppBar(
        title:Text('Hero Detail')
      ),
      body: Hero(
        tag:'image',
        child: Image.asset('images/2020.08.02.(일)_플러터스터디_5번째.PNG'),
      )
    );
  }
}