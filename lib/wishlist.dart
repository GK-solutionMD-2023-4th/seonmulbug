import 'package:flutter/material.dart';

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
      "imageUrl": '/Users/hongseyeon/Desktop/seonmulbug/assets/image_applewatch.png',
    },
    {
      "giftname": "Apple 맥북 프로 13 M2",
      "imageUrl": '/Users/hongseyeon/Desktop/seonmulbug/assets/image_Macbook.png',
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
                  imageUrl: gift[index]["imageUrl"] as String, //이미지url은 gift 리스트에 저장되어 있는 "imageUrl"이고, 문자열이다.
          );
              },
            ),
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton.extended(
        onPressed: (){},
        icon: SizedBox(
           height: 70,
           width: 250,
        ),
        label: Row(
           mainAxisAlignment: MainAxisAlignment.center, // 수평 가운데 정렬
           children: [
            SizedBox(width: 8), // 아이콘과 텍스트 사이 간격 조절
            Text('펀딩하기'),
          ],
        ),
        backgroundColor: Colors.blue,
        elevation: 0,
        shape: RoundedRectangleBorder(),
      ),
    );
  }
}

Widget postContainer({String giftname = '', String imageUrl = ''}) {
return Column(
      crossAxisAlignment: CrossAxisAlignment.start, 
      children: [
          Container( //이 콘테이너는 이미지의 디자인을 다루고 있다
            width: 130,
            height: 130,
            child: Image.asset( 
              imageUrl, 
              fit: BoxFit.cover,
            ),
          ),
          Container( //이 콘테이너는 플로팅 액션 버튼을 이제 할거다
            width: 300,
            height: 70,
          ),
          Container(
            padding: const EdgeInsets.all(10),
            child: Column(
            crossAxisAlignment: CrossAxisAlignment.start, 
            children: [
             Text(
               giftname,
               style: const TextStyle(
                fontSize: 20,
               fontWeight: FontWeight.bold,
               ),
             ),
            ],
           ),
          ),
      ],
    );
}