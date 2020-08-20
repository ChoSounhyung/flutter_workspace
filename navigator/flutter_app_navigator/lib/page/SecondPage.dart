import 'package:flutter/material.dart';
import 'package:flutter_app_navigator/model/Person.dart';

class SecondPage extends StatelessWidget {
  //final Person person;

  //SecondPage({@required this.person});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('두번째 : ') //+ person.name + ' ' + person.age.toString()),
      ),
      body: RaisedButton(
        child: Text('이전 페이지로'),
        onPressed: () {
          Navigator.pop(context, 'ok');
        },
      )
    );
  }
}
