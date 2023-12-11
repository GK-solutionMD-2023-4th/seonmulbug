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
      "imageUrl": 'https://www.google.com/imgres?imgurl=https%3A%2F%2Fthumbnail7.coupangcdn.com%2Fthumbnails%2Fremote%2F492x492ex%2Fimage%2Fretail%2Fimages%2F2023%2F09%2F26%2F9%2F6%2F20215e41-c8bd-44eb-bd17-7f29d011ffe0.jpg&tbnid=j_z7Dm7Q61XwdM&vet=12ahUKEwifgcmBtYaDAxXNEXAKHTsDAXwQMygAegUIARCQAQ..i&imgrefurl=https%3A%2F%2Ffallcent.com%2Fproduct%2F%3Fproduct_id%3D7630892228%26item_id%3D20252616579&docid=F7HWyOKrOLoaaM&w=492&h=492&q=Apple%20%EC%95%A0%ED%94%8C%EC%9B%8C%EC%B9%98%209%20GPS&ved=2ahUKEwifgcmBtYaDAxXNEXAKHTsDAXwQMygAegUIARCQAQ',
    },
    {
      "giftname": "Apple 맥북 프로 13 M2",
      "imageUrl": 'https://www.google.com/imgres?imgurl=https%3A%2F%2Fkream-phinf.pstatic.net%2FMjAyMjEwMjVfMjc3%2FMDAxNjY2Njg4MjA4NTY1.8A_CHkw-7dDr3safPfPEZUQmZXLmFT8wYFoFya7koV4g.Jg12UO2zxRqqwZHL6sEyP9cjrJN3UmeA4CfWPk48wjIg.JPEG%2Fa_fde332f6a38e444fa31c748a7a1b8dfa.jpeg%3Ftype%3Dl&tbnid=oxl6ldcaYoJtFM&vet=12ahUKEwivnYOitYaDAxWRBIgKHXW_DjIQMygAegUIARCvAQ..i&imgrefurl=https%3A%2F%2Fkream.co.kr%2Fproducts%2F82761&docid=qI8FmYKAR8xpWM&w=1120&h=1120&q=Apple%20%EB%A7%A5%EB%B6%81%20%ED%94%84%EB%A1%9C%2013%20M2&ved=2ahUKEwivnYOitYaDAxWRBIgKHXW_DjIQMygAegUIARCvAQ',
    },
  ];

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("한서연 님의 위시리스트"),
      ),
      body: Column(
        children: [
          Container(
            width: MediaQuery.of(context).size.width,
            height: 200,
            color: Colors.blue,
            child: Text('12월 30일 한서연 님의 생일을 축하합니다'),
          ),
          Expanded(
            child: ListView.builder(
              itemCount: gift.length,
              itemBuilder: (BuildContext con, int index) {
                return postContainer( //리스트를 빌드할 때, 포스터 컨테이너에서 UI 내용을 받아오겠다.
                  giftname: gift[index]["giftname"] as String, //제목은 NEsong 리스트에 저장되어 있는 "title"이고, 문자열이다.
                  imageUrl: gift[index]["imageUrl"] as String, //이미지url은 NEsong 리스트에 저장되어 있는 "imageUrl"이고, 문자열이다.
          );
              },
            ),
          ),
        ],
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
            child: Image.network( 
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