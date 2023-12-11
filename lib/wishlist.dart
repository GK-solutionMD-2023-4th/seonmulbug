import 'package:flutter/material.dart';


class MyWidget extends StatefulWidget {
  @override
  State<MyWidget> createState() => _MyWidgetState();
}

class _MyWidgetState extends State<MyWidget> {
  @override
  Widget build(BuildContext context) 
}

class MyHomePage extends StatefulWidget {

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  var Wishlist  = [ 
    {
      "seonmulname": "Apple 애플워치 9 GPS",
      "imageUrl": 'https://i.namu.news/file/namunews/2b/2b533ce6114348b89b322e6bfa3a362ff5ec861240edf5136cedd5612cfe8b09.jpg',
    },
    {
      "seonmulname": "Apple 맥북 프로 13 M2",
      "imageUrl": 'https://cloudfront-ap-northeast-1.images.arcpublishing.com/chosun/U536VEUWLBMBWOVQJZBNHNGOFM.jpg',
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold( 
      appBar: AppBar(
        title: Text("한서연 님의 위시리스트"),
      ),
      body: ListView.builder( 
        itemCount: Wishlist.length, 
        itemBuilder: (BuildContext con, int index) {
          return postContainer( 
            seonmulname: Wishlist[index]["seonmulname"] as String, 
            imageUrl: Wishlist[index]["imageUrl"] as String, 
          );
        },
        ),
    );
  }

  Widget postContainer({String seonmulname = '', String imageUrl = ''}) {
    //포스트컨테이너 위젯은 선물이름, 이미지링크, 펀딩 버튼으로 구성되어 있다. 
    //여기서부터 끝까지는 UI 배열, 디자인에 관한 코드이다.
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start, 
      children: [
          Container( //이 콘테이너는 이미지의 디자인을 다루고 있다
            width: 150,
            height: 150,
            child: Image.network( 
              imageUrl, 
              fit: BoxFit.cover,
            ),
          ),
          Container( //이 콘테이너는 플로팅 액션 버튼을 이제 할거다
            width: 300,
            height: 70,
            child: Image.network( 
              imageUrl, 
              fit: BoxFit.cover,
            ),
          ),
          Container(
            padding: const EdgeInsets.all(10),
            child: Column(
            crossAxisAlignment: CrossAxisAlignment.start, 
            children: [
             Text(
               seonmulname,
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
}