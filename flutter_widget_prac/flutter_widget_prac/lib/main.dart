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

        primarySwatch: Colors.blue
        //visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}
enum Gender {MAN, WOMAN}
class _MyHomePageState extends State<MyHomePage> {
  //final items = List.generate(100, (index) => index + 1).toList();
  Gender _gender = Gender.MAN;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(

        title: Text('위젯 연습'),
      ),
    body: Center(
      child: Column(
        children: <Widget>[
          GestureDetector(
            onTap:(){
              print('GestureDetector 클릭');
            },
            child:Text('클릭 ME!!'),
          ),
          SizedBox(
            height:40,
          ),
          RadioListTile(
            title:Text('남자'),
              value:Gender.MAN,
              groupValue: _gender,
              onChanged: (value){
                showDialog(
                  context: context,
                  barrierDismissible: true,
                  builder: (BuildContext context) {
                    return AlertDialog(
                      title: Text('제목'),
                      content: SingleChildScrollView(
                        child:ListBody(
                          children: <Widget>[
                            Text('AlertDialog 입니다.'),
                            Text('OK를 눌러서 닫습니다.'),
                          ],
                        ),
                      ),
                      actions: <Widget>[
                        FlatButton(
                          child: Text('OK'),
                          onPressed:(){
                            Navigator.of(context).pop();
                          },
                        ),
                      ],
                    );
                  }
                );
                setState(() {
                  _gender = value;
                });
              },
            ),
          RadioListTile(
              title:Text('여자'),
                value:Gender.WOMAN,
                groupValue: _gender,
                onChanged: (value){
                  setState(() {
                    _gender = value;
                  });
                },
              ),
          Card(
            shape:RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(16.0),
            ),
            elevation:4.0,
            child:Container(
              width:400,
              height:200,
              child: Text(
                  '안녕~ 월드야!',
                  style: TextStyle(
                      fontSize: 40.0,
                      fontStyle: FontStyle.italic,
                      fontWeight:FontWeight.bold,
                      color: Colors.amber,
                      letterSpacing:4.0,
                  )
              ),
            ),
          ),
          Card(
            shape:RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(16.0),
            ),
            elevation:4.0,
            child:Container(
              padding: EdgeInsets.all(20),
              height:200,
              width:400,
              child: CircleAvatar(
                //child:Image.network('http://bit.ly/2Pvz4t8'),
                backgroundImage: NetworkImage('http://bit.ly/2Pvz4t8')
                //child:Image.asset('assets/파일이름.JPG'),
            )
            ),
          ),
          Card(
            shape:RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(16.0),
            ),
            elevation:4.0,
            child:Container(
              padding: EdgeInsets.all(20),
              height:200,
            ),
          ),
        ],
      ),
    ),
    /*return DefaultTabController(
      length:4,
    child: Scaffold(
      appBar: AppBar(
        title: Text('탭 + 페이지뷰'),
        bottom: TabBar(
          tabs: <Widget>[
            Tab(icon:Icon(Icons.tag_faces)),
            Tab(text: '메뉴2'),
            Tab(icon:Icon(Icons.info), text: '메뉴3'),
            Tab(icon:Icon(Icons.question_answer), text: '메뉴3'),
          ],
        ),
      ),
      body: TabBarView(
        children: <Widget>[
          Container(color:Colors.yellow,),
          Container(color:Colors.orange,),
          Container(color:Colors.redAccent,),
          Container(color:Colors.red,),
        ],
      ),*/
      bottomNavigationBar: BottomNavigationBar(
        items : [
          BottomNavigationBarItem(
            icon:Icon(Icons.home),
            title:Text('홈'),
            backgroundColor: Colors.blue,
          ),
          BottomNavigationBarItem(
            icon:Icon(Icons.person),
            title:Text('프로필'),
          ),
          BottomNavigationBarItem(
            icon:Icon(Icons.notifications),
            title:Text('알림'),
          ),
//          BottomNavigationBarItem(
//            icon:Icon(Icons.mail),
//            title:Text('연락'),
//          ),
        ]
      ),
   // )

    /*return Scaffold(
      appBar: AppBar(

        title: Text('위젯 연습'),
      ),
      body: PageView(
        children: <Widget>[
          Container(
            color:Colors.red,
          ),
          Container(
            color:Colors.blue,
          ),
          Container(
            color:Colors.green,
          ),
        ],
      ),
    ),*/
      /*body: GridView.count(
        crossAxisCount:2,
        children: <Widget>[
          Container(
            color: Colors.red,
            width: 100,
            height:100,
          ),
          Container(
            color: Colors.blue,
            width: 100,
            height:100,
          ),
          Container(
            color: Colors.green,
            width: 100,
            height:100,
          ),
          Container(
            color: Colors.amber,
            width: 100,
            height:100,
          ),
        ],
      ),*/
      /*body: ListView(
        scrollDirection: Axis.vertical,
        children: <Widget>[
          ListTile(
            leading: Icon(Icons.home),
            title: Text('Home'),
            trailing: Icon(Icons.navigate_next),
            onTap: () {},
          ),
          ListTile(
            leading: Icon(Icons.event),
            title: Text('Event'),
            trailing: Icon(Icons.navigate_next),
            onTap: () {},
          ),
          ListTile(
            leading: Icon(Icons.camera),
            title: Text('Camera'),
            trailing: Icon(Icons.navigate_next),
            onTap: () {},
          ),
          ListTile(
            title: Text('Camera'),
            trailing: Icon(Icons.navigate_next),
            onTap: () {},
          ),
          ListTile(
            leading: Icon(Icons.music_note),
            title: Text('Camera'),
            trailing: Icon(Icons.navigate_next),
            onTap: () {},
          ),
        ]
      ),*/
      /*body: SingleChildScrollView(
        child: Column(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              SingleChildScrollView(
                child:ListBody(
                  children: items.map((index) => Text('$index 번')).toList(),
                )
              ),
              Container(
                color: Colors.red,
                width:100,
                height:100,
                padding: const EdgeInsets.all(8.0),
                margin: const EdgeInsets.all(8.0),
              ),
              Container(
                color: Colors.green,
                width:100,
                height:100,
                padding: const EdgeInsets.all(8.0),
                margin: const EdgeInsets.all(8.0),
              ),
              Container(
                color: Colors.blue,
                width:100,
                height:100,
                padding: const EdgeInsets.all(8.0),
                margin: const EdgeInsets.all(8.0),
              ),
              Row(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  Stack(
                    children: <Widget>[
                      Container(
                        color: Colors.red,
                        width:120,
                        height:120,
                        padding: const EdgeInsets.all(8.0),
                        margin: const EdgeInsets.all(8.0),
                      ),
                      Container(
                        color: Colors.green,
                        width:80,
                        height:80,
                        padding: const EdgeInsets.all(8.0),
                        margin: const EdgeInsets.all(8.0),
                      ),
                      Container(
                        color: Colors.blue,
                        width:100,
                        height:100,
                        padding: const EdgeInsets.all(8.0),
                        margin: const EdgeInsets.all(8.0),
                      ),
                      Container(
                        color: Colors.transparent,
                        width:100,
                        height:40,
                        padding: const EdgeInsets.all(8.0),
                        margin: const EdgeInsets.all(8.0),
                        child: Text(
                            '스택 모양!!'
                        ),
                      ),
                    ],
                  ),
                  Container(
                    color: Colors.green,
                    width:100,
                    height:100,
                    padding: const EdgeInsets.all(8.0),
                    margin: const EdgeInsets.all(8.0),
                  ),
                  Container(
                    color: Colors.blue,
                    width:100,
                    height:100,
                    padding: const EdgeInsets.all(8.0),
                    margin: const EdgeInsets.all(8.0),
                  ),
                ],
              ),
              Row(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  Stack(
                    children: <Widget>[
                      Container(
                        color: Colors.red,
                        width:120,
                        height:120,
                        padding: const EdgeInsets.all(8.0),
                        margin: const EdgeInsets.all(8.0),
                      ),
                      Container(
                        color: Colors.green,
                        width:80,
                        height:80,
                        padding: const EdgeInsets.all(8.0),
                        margin: const EdgeInsets.all(8.0),
                      ),
                      Container(
                        color: Colors.blue,
                        width:100,
                        height:100,
                        padding: const EdgeInsets.all(8.0),
                        margin: const EdgeInsets.all(8.0),
                      ),
                      Container(
                        color: Colors.transparent,
                        width:100,
                        height:40,
                        padding: const EdgeInsets.all(8.0),
                        margin: const EdgeInsets.all(8.0),
                        child: Text(
                            '스택 모양!!'
                        ),
                      ),
                    ],
                  ),
                  Container(
                    color: Colors.green,
                    width:100,
                    height:100,
                    padding: const EdgeInsets.all(8.0),
                    margin: const EdgeInsets.all(8.0),
                  ),
                  Container(
                    color: Colors.blue,
                    width:100,
                    height:100,
                    padding: const EdgeInsets.all(8.0),
                    margin: const EdgeInsets.all(8.0),
                  ),
                ],
              ),
              Row(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  Stack(
                    children: <Widget>[
                      Container(
                        color: Colors.red,
                        width:120,
                        height:120,
                        padding: const EdgeInsets.all(8.0),
                        margin: const EdgeInsets.all(8.0),
                      ),
                      Container(
                        color: Colors.green,
                        width:80,
                        height:80,
                        padding: const EdgeInsets.all(8.0),
                        margin: const EdgeInsets.all(8.0),
                      ),
                      Container(
                        color: Colors.blue,
                        width:100,
                        height:100,
                        padding: const EdgeInsets.all(8.0),
                        margin: const EdgeInsets.all(8.0),
                      ),
                      Container(
                        color: Colors.transparent,
                        width:100,
                        height:40,
                        padding: const EdgeInsets.all(8.0),
                        margin: const EdgeInsets.all(8.0),
                        child: Text(
                            '스택 모양!!'
                        ),
                      ),
                    ],
                  ),
                  Container(
                    color: Colors.green,
                    width:100,
                    height:100,
                    padding: const EdgeInsets.all(8.0),
                    margin: const EdgeInsets.all(8.0),
                  ),
                  Container(
                    color: Colors.blue,
                    width:100,
                    height:100,
                    padding: const EdgeInsets.all(8.0),
                    margin: const EdgeInsets.all(8.0),
                  ),
                ],
              )
            ]
        ),
      ),*/

    );
  }
}
