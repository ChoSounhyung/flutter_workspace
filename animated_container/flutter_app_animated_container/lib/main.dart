import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(

        primarySwatch: Colors.blue,

        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class _AnimatedContainerPage extends State<AnimatedContainerPage>{
  var _size = 100.0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title:Text('AnimatedContainer'),
      ),
      body: Center(
        child:GestureDetector(
          onTap: () {
            final random =  Random();
            setState(() {
              _size = random.nextInt(200).toString(),
            });
          },
        ),
        child:AnimatedContainer(
          duration: Duration(seconds: 1),
          width: _size,
          height: _size;
          child: Image.asset('images/sample.PNG')
          curve: Curves.fa
        )
      ),
    );
  }
}