import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

final dummyItems = [
  'https://www.e-mirim.hs.kr/upload/board/1596615295865.JPG',
  'https://www.e-mirim.hs.kr/upload/board/1596615295877.JPG',
  'https://www.e-mirim.hs.kr/upload/board/1596615295885.JPG',
  'https://www.e-mirim.hs.kr/upload/board/1596615295889.JPG',
];

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: '복잡 위젯 예제',
      theme: ThemeData(
        primarySwatch: Colors.orange,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  var _index = 0; // 페이지 인덱스
  var _pages = [
    Page1(),
    Page2(),
    Page3(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white, //배경색을 흰색으로
        title: Text(
          '복잡한 UI',
          style: TextStyle(color: Colors.black), //글자색을 검은색으로
        ),
        centerTitle: true, // 제목을 가운데로
        actions: <Widget>[
          IconButton(
            icon: Icon(
              Icons.more_vert,
              color: Colors.black, //아이콘 색을 검은색으로
            ),
            onPressed: () {},
          ),
        ],
      ),
      body: _pages[_index],
        bottomNavigationBar: BottomNavigationBar(
        onTap:(index) {
          setState((){
            _index = index; //선택된 탭의 인덱스로 _index를 변경
          });
        },
        currentIndex: _index, //선택된 인덱스
        items: <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            title: Text('홈'),
            icon: Icon(Icons.home),
          ),
          BottomNavigationBarItem(
            title: Text('이용서비스'),
            icon: Icon(Icons.assignment),
          ),
          BottomNavigationBarItem(
            title: Text('내 정보'),
            icon: Icon(Icons.account_circle),
          ),
        ],
      ),
    );
  }
}



class Page1 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(
        '홈 페이지',
        style: TextStyle(fontSize:40),
      ),
    );
  }
}



class Page2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView(
      children: <Widget>[
        _buildTop(),
        _buildMiddle(),
        _buildBottom(),
      ],
    );
  }

  Widget _buildTop() {
    return Padding(
      padding: const EdgeInsets.only(top:20, bottom: 20),
      child: Column(
        children: <Widget>[
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              InkWell(
                onTap: (){
                  print('첫번째 행의 첫번째 아이콘 클릭!');
                },
                child: Column(
                  children: <Widget>[
                    Icon(Icons.local_taxi, size: 40),
                    Text('기본 택시'),
                  ],
                ),
              ),
              InkWell(
                onTap: (){
                  print('첫번째 행의 두번째 아이콘 클릭!');
                },
                child: Column(
                  children: <Widget>[
                    Icon(Icons.local_taxi, size: 40),
                    Text('전기 택시'),
                  ],
                ),
              ),
              Column(
                children: <Widget>[
                  Icon(Icons.local_taxi, size: 40),
                  Text('시외 택시'),
                ],
              ),
              Column(
                children: <Widget>[
                  Icon(Icons.local_taxi, size: 40),
                  Text('모범 택시'),
                ],
              ),
            ],
          ),
          SizedBox(height: 20,),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              Column(
                children: <Widget>[
                  Icon(Icons.local_taxi, size: 40),
                  Text('기본 택시'),
                ],
              ),
              Column(
                children: <Widget>[
                  Icon(Icons.local_taxi, size: 40),
                  Text('전기 택시'),
                ],
              ),
              Column(
                children: <Widget>[
                  Icon(Icons.local_taxi, size: 40),
                  Text('시외 택시'),
                ],
              ),
              Opacity(
                opacity: 0.0, //투명으로 안보이게
                child: Column(
                  children: <Widget>[
                    Icon(Icons.local_taxi, size: 40),
                    Text('모범 택시'),
                  ],
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }

  Widget _buildMiddle() {
    return CarouselSlider(
      options: CarouselOptions(
        height: 200.0,
        autoPlay: true,
      ),
      items: dummyItems.map((url) {
        return Builder(
          builder: (BuildContext context) { //context를 사용하고자 할 때
            return Container(
                width: MediaQuery.of(context).size.width, //기기의 가로 길이
                margin: EdgeInsets.symmetric(horizontal: 5.0), //좌우 여백
                decoration: BoxDecoration(
                    color: Colors.black12, //배경색
                ),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(8.0),
                  child: Image.network(url, fit:BoxFit.cover),
                )
            );
          },
        );
      }).toList(),
    );
  }

  Widget _buildBottom() {
    final items = List.generate(10, (i) {
      return ListTile(
        leading: Icon(Icons.notifications_none),
        title: Text('[이벤트] 이것은 공지사항입니다 $i'),
      );
    });
    return ListView(
      physics: NeverScrollableScrollPhysics(),
      shrinkWrap: true,
      children: items,
    );
  }
}



class Page3 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(
        '페이지 3',
        style: TextStyle(fontSize:40),
      ),
    );
  }
}
