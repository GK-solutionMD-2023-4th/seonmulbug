import 'package:flutter/material.dart';
import 'package:percent_indicator/percent_indicator.dart';


class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blueGrey,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

var gift  = [ 
    {
      "giftname": "Apple 애플워치 9 GPS",
      "price": "599,000원",
      "imageUrl": 'assets/image/image_applewatch.png',
    },
    {
      "giftname": "Apple 맥북 프로 13 M2",
      "price": '1,833,990원',
      "imageUrl": 'assets/image/image_Macbook.png',
    },
  ];

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        title: Text(
          "한서연 님의 위시리스트",
          style: TextStyle(
           color: Colors.black, // 텍스트 색상 변경
           fontWeight: FontWeight.bold, // 폰트 굵기 변경
           fontSize: 20, // 폰트 크기 변경
         ),
        ),
        leading: IconButton(icon: Icon(Icons.arrow_back_ios_new), onPressed: null),
      ),
      body: Column(
        children: [
          Container(
            width: MediaQuery.of(context).size.width,
            height: 200,
            color: Colors.blue,
            padding: EdgeInsets.fromLTRB(30, 30, 70, 30),
            child: Text(
              '12월 30일 한서연 님의 생일을 축하합니다🎉',
              style: TextStyle(
               color: Colors.white, // 텍스트 색상 변경
               fontWeight: FontWeight.bold, // 폰트 굵기 변경
               fontSize: 30, // 폰트 크기 변경
              ),
            ),
          ),
          Expanded(
            child: ListView.builder(
              itemCount: gift.length,
              itemBuilder: (BuildContext con, int index) {
                return postContainer( //리스트를 빌드할 때, 포스터 컨테이너에서 UI 내용을 받아오겠다.
                  giftname: gift[index]["giftname"] as String, //제목은 gift 리스트에 저장되어 있는 "title"이고, 문자열이다.
                  imageUrl: gift[index]["imageUrl"] as String,
                  price: gift[index]["price"] as String,  
          );
              },
            ),
          ),
        ],
      ),
      
    );
  }
}

Widget postContainer({String giftname = '', String imageUrl = '', String price = ''}) {
  return Column(
    children: [
      Row(
        children: [
          Container(
            margin:EdgeInsets.fromLTRB(26, 37, 0, 10),
            width: 98,
            height: 95,
            decoration: BoxDecoration(
              boxShadow: [
                BoxShadow(
                  color: Colors.grey,  // 그림자 색상
                  offset: Offset(0, 4),  // 그림자 위치 (수평, 수직)
                  blurRadius: 5,  // 그림자 흐림 정도
                  spreadRadius: 0,  // 그림자 확산 정도
                ),
              ],
            ),
            child: Image.asset(
              imageUrl,
              fit: BoxFit.cover,
            ),
          ),
          Container(
            padding: const EdgeInsets.all(10),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                padding: EdgeInsets.fromLTRB(10, 0, 0, 5),
                child : Text(
                  giftname,
                  style: const TextStyle(
                    fontSize: 20,
                    //fontFamily: ,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                ),
                LinearPercentIndicator(
                  width: 220,
                  lineHeight: 20,
                  percent: 0.9,
                  progressColor: Colors.blue,
                ),
                Container(
                 padding: EdgeInsets.fromLTRB(150, 5, 0, 5),
                 child: Text(
                 price,
                 textAlign: TextAlign.right,
                 style: const TextStyle(
                   fontSize: 15,
                   fontWeight: FontWeight.bold,
                 ),
                ),
                ),

                // Text(
                //   padding:EdgeInsets.fromLTRB(0, 5, 0, 5),
                //   textAlign: TextAlign.right,
                //   price,
                //   style: const TextStyle(
                //     fontSize: 20,
                //     fontWeight: FontWeight.bold,
                //   ),
                // ),
              ],
            ),
          ),
        ],
      ),
      FloatingActionButton.extended(
        onPressed: () {},
        label: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(width: 8),
            Text('펀딩하기'),
          ],
        ),
        icon: SizedBox(
          height: 70,
          width: 250,
        ),
        backgroundColor: Colors.blue,
        elevation: 0,
        shape: RoundedRectangleBorder(),
      ),
    ],
  );
}
