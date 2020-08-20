import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_app_navigator/model/Person.dart';
import 'package:flutter_app_navigator/page/SecondPage.dart';

class FirstPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('첫번째')
      ),
      body: RaisedButton(
        child: Text('다음 페이지로'),
        onPressed: () async {
          final person = Person('홍길동', 20);
          final result = await Navigator.pushNamed(context, '/second');
          /*final result = await Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => SecondPage(
                person: person
              ),
            ),
          );*/
          print("결과는 : " + result);
        },
      ),
    );
  }
}
