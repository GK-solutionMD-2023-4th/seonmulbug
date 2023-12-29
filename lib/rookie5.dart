import 'dart:js';

import 'package:flutter/material.dart';
import 'package:percent_indicator/percent_indicator.dart';


class MyApp5 extends StatelessWidget {
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
        title: Row(
    mainAxisAlignment: MainAxisAlignment.spaceBetween,
    children: [
      Text(
        "나의 위시리스트",
        style: TextStyle(
          color: Colors.black,
          fontWeight: FontWeight.bold,
          fontSize: 20,
        ),
      ),
      Text(
        "편집하기",
        style: TextStyle(
          color: Colors.black,
          fontWeight: FontWeight.bold,
          fontSize: 16,
        ),
      ),
    ],
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
            child: Column(
            children: [
              Container(
               width: MediaQuery.of(context).size.width,
               child: Text(
               '12월 30일',
    style: TextStyle(
      color: Colors.white,
      fontWeight: FontWeight.bold,
      fontSize: 30,
    ),
    textAlign: TextAlign.left,
  ),
),
Container(
  width: MediaQuery.of(context).size.width,
  child: Text(
    '한서연 님 환영해요🎂🎉',
    style: TextStyle(
      color: Colors.white,
      fontWeight: FontWeight.normal,
      fontSize: 25,
    ),
    textAlign: TextAlign.left,
  ),
),

            ],
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
                  context: context,
          );
              },
            ),
          ),
        ],
      ),
      
    );
  }
}

Widget postContainer({String giftname = '', String imageUrl = '', String price = '', required BuildContext context}) {
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
    
      GestureDetector(
        onTap: () {
           Navigator.push(context, MaterialPageRoute(
            builder: (BuildContext context){
              return secondpage();
            },
            ));
        },
        child: Stack(
          children: [
            Container(
              width: MediaQuery.of(context).size.width - 20, 
              height: 50,
              color: Colors.blue),
            Positioned(
             right: 0,
             top: 0,
             bottom: 0,
             child: Center(
             child: Text(
               "선물 준 친구",
             style: TextStyle(color: Colors.white),
             ),
            ),
           ),
              
              ],
            ),
          )
    ],
  );
}

class secondpage extends StatelessWidget {//선물 준 친구 페이지(감동카드 보내기 버튼 누르면 감동카드 페이지로)

  @override
  Widget build(BuildContext ctx) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Text(''),
        leading: IconButton(
        icon: Icon(Icons.arrow_back_ios_new,
        color: Colors.black),
        onPressed:(){
          Navigator .pop(ctx);
        }
      ),
      ),
      body: ListView(
          children: [
           Container(
            alignment: Alignment.topLeft,
           ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
           children: [
            Container(
              margin: EdgeInsets.all(22.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                Text(
                '다이슨 청소기를',
                  style: TextStyle(
                  fontSize:25,
                  fontWeight: FontWeight.bold
                  ), 
                  textAlign: TextAlign.start,
               ),
            
               Text(
                '선물한 친구',
                  style: TextStyle(
                  fontSize:25,
                  fontWeight: FontWeight.bold
                  ), 
                  textAlign: TextAlign.start,
               ),
                ],
              ),
            ),

             Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
               Container(
                margin: EdgeInsets.all(13.0),
                child: ClipOval(
                  child: Container(
                  width: 80,
                  height: 80,
                  color: Colors.amber,
                  ),
                ),
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
               Text(
                '한서연',
                  style: TextStyle(
                  fontSize:17,
                  fontWeight: FontWeight.bold
                  ), 
               ),
               SizedBox(height: 8),
                GestureDetector(
                onTap: (){
                Navigator.push(ctx, MaterialPageRoute(
                  builder: (Context) => page()),);
                },
                child:
               ClipRRect(
                borderRadius: BorderRadius.circular(30.0), // 원하는 각을 설정
                child: Container(
                width: 120.0,
                height: 40.0,
                color: Colors.blue,
                child: Center(
                  child: Text(
                   '감동카드 보내기',
                    style: TextStyle(color: Colors.white),
                  ),
                ),
                ),
              ),
              
              ),
                ],
               ),


                ],
              ),
              ],
             ),
             Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
               Container(
                margin: EdgeInsets.all(13.0),
                child: ClipOval(
                  child: Container(
                  width: 80,
                  height: 80,
                  color: Colors.amber,
                  ),
                ),
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
               Text(
                '한서연',
                  style: TextStyle(
                  fontSize:17,
                  fontWeight: FontWeight.bold
                  ), 
               ),
               SizedBox(height: 8),
               GestureDetector(
                onTap: (){
                Navigator.push(ctx, MaterialPageRoute(
                  builder: (Context) => page()),);
                 },
               child:ClipRRect(
                borderRadius: BorderRadius.circular(30.0), // 원하는 각을 설정
                child: Container(
                width: 120.0,
                height: 40.0,
                color: Colors.blue,
                child: Center(
                  child: Text(
                   '감동카드 보내기',
                    style: TextStyle(color: Colors.white),
                  ),
                ),
                ),
              ),
               ),

                ],
              ),
              ],
             ),
             Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
               Container(
                margin: EdgeInsets.all(13.0),
                child: ClipOval(
                  child: Container(
                  width: 80,
                  height: 80,
                  color: Colors.amber,
                  ),
                ),
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
               Text(
                '한서연',
                  style: TextStyle(
                  fontSize:17,
                  fontWeight: FontWeight.bold
                  ), 
               ),
               SizedBox(height: 8),
               GestureDetector(
                onTap: (){
                Navigator.push(ctx, MaterialPageRoute(
                  builder: (Context) => page()),);
                 },
               child: ClipRRect(
                borderRadius: BorderRadius.circular(30.0), // 원하는 각을 설정
                child: Container(
                width: 120.0,
                height: 40.0,
                color: Colors.blue,
                child: Center(
                  child: Text(
                   '감동카드 보내기',
                    style: TextStyle(color: Colors.white),
                  ),
                ),
                ),
              ),
               ),


                ],
              ),
              ],
             ),
             Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
               Container(
                margin: EdgeInsets.all(13.0),
                child: ClipOval(
                  child: Container(
                  width: 80,
                  height: 80,
                  color: Colors.amber,
                  ),
                ),
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
               Text(
                '한서연',
                  style: TextStyle(
                  fontSize:17,
                  fontWeight: FontWeight.bold
                  ), 
               ),
               SizedBox(height: 8),
               GestureDetector(
                onTap: (){
                Navigator.push(ctx, MaterialPageRoute(
                  builder: (Context) => page()),);
                 },
               child: ClipRRect(
                borderRadius: BorderRadius.circular(30.0), // 원하는 각을 설정
                child: Container(
                width: 120.0,
                height: 40.0,
                color: Colors.blue,
                child: Center(
                  child: Text(
                   '감동카드 보내기',
                    style: TextStyle(color: Colors.white),
                  ),
                ),
                ),
              )
               ),

                ],
              ),
              ],
             ),
             Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
               Container(
                margin: EdgeInsets.all(13.0),
                child: ClipOval(
                  child: Container(
                  width: 80,
                  height: 80,
                  color: Colors.amber,
                  ),
                ),
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
               Text(
                '한서연',
                  style: TextStyle(
                  fontSize:17,
                  fontWeight: FontWeight.bold
                  ), 
               ),
               SizedBox(height: 8),
               GestureDetector(
                onTap: (){
                Navigator.push(ctx, MaterialPageRoute(
                  builder: (Context) => page()),);
                 },
               child: ClipRRect(
                borderRadius: BorderRadius.circular(30.0), // 원하는 각을 설정
                child: Container(
                width: 120.0,
                height: 40.0,
                color: Colors.blue,
                child: Center(
                  child: Text(
                   '감동카드 보내기',
                    style: TextStyle(color: Colors.white),
                  ),
                ),
                ),
              )
               ),

                ],
              ),
              ],
             ),
             Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
               Container(
                margin: EdgeInsets.all(13.0),
                child: ClipOval(
                  child: Container(
                  width: 80,
                  height: 80,
                  color: Colors.amber,
                  ),
                ),
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
               Text(
                '한서연',
                  style: TextStyle(
                  fontSize:17,
                  fontWeight: FontWeight.bold
                  ), 
               ),
               SizedBox(height: 8),
               GestureDetector(
                onTap: (){
                Navigator.push(ctx, MaterialPageRoute(
                  builder: (Context) => page()),);
                 },
               child: ClipRRect(
                borderRadius: BorderRadius.circular(30.0), // 원하는 각을 설정
                child: Container(
                width: 120.0,
                height: 40.0,
                color: Colors.blue,
                child: Center(
                  child: Text(
                   '감동카드 보내기',
                    style: TextStyle(color: Colors.white),
                  ),
                ),
                ),
              )
               ),
                ],
              ),
              ],
             ),
             Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
               Container(
                margin: EdgeInsets.all(13.0),
                child: ClipOval(
                  child: Container(
                  width: 80,
                  height: 80,
                  color: Colors.amber,
                  ),
                ),
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
               Text(
                '한서연',
                  style: TextStyle(
                  fontSize:17,
                  fontWeight: FontWeight.bold
                  ), 
               ),
               SizedBox(height: 8),
               GestureDetector(
                onTap: (){
                Navigator.push(ctx, MaterialPageRoute(
                  builder: (Context) => page()),);
                 },
               child: ClipRRect(
                borderRadius: BorderRadius.circular(30.0), // 원하는 각을 설정
                child: Container(
                width: 120.0,
                height: 40.0,
                color: Colors.blue,
                child: Center(
                  child: Text(
                   '감동카드 보내기',
                    style: TextStyle(color: Colors.white),
                  ),
                ),
                ),
              )
               ),
                ],
              ),
              ],
             ),
            Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
               Container(
                margin: EdgeInsets.all(13.0),
                child: ClipOval(
                  child: Container(
                  width: 80,
                  height: 80,
                  color: Colors.amber,
                  ),
                ),
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
               Text(
                '한서연',
                  style: TextStyle(
                  fontSize:17,
                  fontWeight: FontWeight.bold
                  ), 
               ),
               SizedBox(height: 8),
               GestureDetector(
                onTap: (){
                Navigator.push(ctx, MaterialPageRoute(
                  builder: (Context) => page()),);
                 },
               child: ClipRRect(
                borderRadius: BorderRadius.circular(30.0), // 원하는 각을 설정
                child: Container(
                width: 120.0,
                height: 40.0,
                color: Colors.blue,
                child: Center(
                  child: Text(
                   '감동카드 보내기',
                    style: TextStyle(color: Colors.white),
                  ),
                ),
                ),
              )
               ),
                ],
              ),
              ],
             ),



           ],
          ),
        );
  }
}

class page extends StatelessWidget {//감동카드 쓰기 페이지(감동카드를 보냈습니다.페이지로)

///////
  @override
  Widget build(BuildContext ctt) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Text(''),
        leading: IconButton(icon: Icon(Icons.arrow_back_ios_new,
        color: Colors.black), 
        onPressed: (){
          Navigator.pop(ctt);
        }),

      ),
      body: Column(
        children: [
      ListView(
        shrinkWrap: true,
        // Center is a layout widget. It takes a single child and positions it
        // in the middle of the parent.
          children: [
           Container(
            alignment: Alignment.topLeft,
           ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.center,
           children: [
            Container(
              margin: EdgeInsets.all(22.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                Text(
                '한서연님 에게 주는 선물',
                  style: TextStyle(
                  fontSize:25,
                  fontWeight: FontWeight.bold
                  ), 
                  textAlign: TextAlign.center,
               ),
                ],
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ClipRRect(
                borderRadius: BorderRadius.circular(10.0), // 적절한 반경 값으로 수정
                child: Image.network(
                'https://i.pinimg.com/564x/e6/24/77/e62477202c84e531fad84e35d47085b9.jpg', // 이미지 URL에 맞게 수정
                 width: 50, // 이미지 너비에 맞게 수정
                 height: 50, // 이미지 높이에 맞게 수정
                 fit: BoxFit.cover, // 이미지 채우기 모드에 맞게 수정
                 ),
                ),
                SizedBox(width: 8),
                ClipRRect(
                borderRadius: BorderRadius.circular(10.0), // 적절한 반경 값으로 수정
                child: Image.network(
                'https://i.pinimg.com/564x/df/d5/41/dfd541e3fdc0453e0fecc0599159ab69.jpg', // 이미지 URL에 맞게 수정
                 width: 50, // 이미지 너비에 맞게 수정
                 height: 50, // 이미지 높이에 맞게 수정
                 fit: BoxFit.cover, // 이미지 채우기 모드에 맞게 수정
                 ),
                ),
                SizedBox(width: 8),
                ClipRRect(
                borderRadius: BorderRadius.circular(10.0), // 적절한 반경 값으로 수정
                child: Image.network(
                'https://i.pinimg.com/564x/6a/5b/d5/6a5bd523ecfa81600201fde8994a9a7e.jpg', // 이미지 URL에 맞게 수정
                 width: 50, // 이미지 너비에 맞게 수정
                 height: 50, // 이미지 높이에 맞게 수정
                 fit: BoxFit.cover, // 이미지 채우기 모드에 맞게 수정
                 ),
                ),
                SizedBox(width: 8),
                ClipRRect(
                borderRadius: BorderRadius.circular(10.0), // 적절한 반경 값으로 수정
                child: Image.network(
                'https://i.pinimg.com/564x/eb/a1/ad/eba1ad289a1c214ee1474c6c04706e55.jpg', // 이미지 URL에 맞게 수정
                 width: 50, // 이미지 너비에 맞게 수정
                 height: 50, // 이미지 높이에 맞게 수정
                 fit: BoxFit.cover, // 이미지 채우기 모드에 맞게 수정
                 ),
                ),
                SizedBox(width: 8),
                ClipRRect(
                borderRadius: BorderRadius.circular(10.0), // 적절한 반경 값으로 수정
                child: Image.network(
                'https://i.pinimg.com/564x/b4/52/cb/b452cb96ae8a2d9cf66c0e5e322f7bca.jpg', // 이미지 URL에 맞게 수정
                 width: 50, // 이미지 너비에 맞게 수정
                 height: 50, // 이미지 높이에 맞게 수정
                 fit: BoxFit.cover, // 이미지 채우기 모드에 맞게 수정
                 ),
                ),
              ],//children
              ),
              SizedBox(height: 20),
             ClipRRect(
                borderRadius: BorderRadius.circular(10.0), // 적절한 반경 값으로 수정
                child: Image.network(
                'https://i.pinimg.com/564x/e6/24/77/e62477202c84e531fad84e35d47085b9.jpg', // 이미지 URL에 맞게 수정
                 width: 200, // 이미지 너비에 맞게 수정
                 height: 200, // 이미지 높이에 맞게 수정
                 fit: BoxFit.cover, // 이미지 채우기 모드에 맞게 수정
                 ),
                ),
                SizedBox(height: 10),
                ClipRRect(
                borderRadius: BorderRadius.circular(10.0), // 원하는 각을 설정
                child: Container(
                width: 200.0,
                height: 40.0,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10.0),
                  border: Border.all(color: const Color.fromARGB(255, 191, 191, 191), width: 1.0),
                  color: Colors.white,
                ),
                child: Center(
                  child: Text(
                   '텍스트 추가',
                    style: TextStyle(color: Colors.black),
                  ),
                ),
                ),
              ),
              SizedBox(height: 10),
              ClipRRect(
                borderRadius: BorderRadius.circular(10.0), // 적절한 반경 값으로 수정
                child: Container(
                 width: 330, // 이미지 너비에 맞게 수정
                 height: 170, // 이미지 높이에 맞게 수정
                 color: const Color.fromARGB(255, 223, 223, 223),
                 ),
                ),
           ],//children
          )
          ],//children
        ),
        SizedBox(height: 72),
      Align(
        alignment: Alignment.bottomCenter,
        child: GestureDetector(
         onTap: (){
          Navigator.push(ctt, MaterialPageRoute(
            builder: (context) => ppage(),));
         },
      child: Container(
        width: 390,
        height: 49,
        color: Colors.blue,
          child: Center(
          child: Text(
           '감동카드 보내기',
           style: TextStyle(
                  fontFamily: 'NanumGothic',
                  fontSize:25,
                  fontWeight: FontWeight.bold,
                  color: Colors.black,
                  ), 
          ),
          ),
      )
      )
        ),
        
        ],
      ),

     
      );// This trailing comma makes 
  }
}

class ppage extends StatelessWidget {

  @override
  Widget build(BuildContext cot) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Text(''),
        leading: IconButton(icon: Icon(Icons.arrow_back_ios_new), 
        onPressed: (){
          Navigator.pop(cot);
        }),

      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
        Container(height: 200),
       Align(
        alignment: Alignment.bottomCenter,
      child: Column(
      children: [
        Container(
        width: 390,
        height: 49,
        color: Colors.white,
          child: Center(
          child: Text(
           '감동카드를 보냈습니다🎉',
           style: TextStyle(
                  fontFamily: 'NanumGothic',
                  fontSize:28,
                  fontWeight: FontWeight.bold,
                  color: Colors.black,
                  ), 
          ),
          ),
      ),
        SizedBox(height: 64),
        Container(
        width: 390,
        height: 49,
        color: Color.fromARGB(255, 13, 141, 246),
          child: Center(
          child: Text(
           '홈화면으로 이동하기',
           style: TextStyle(
                  fontFamily: 'NanumGothic',
                  fontSize:20,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                  ), 
          ),
          ),
      ),
      SizedBox(height: 17),
      Container(
        width: 390,
        height: 49,
        color: Colors.blue,
          child: Center(
          child: Text(
           '위시리스트로 이동하기',
           style: TextStyle(
                  fontFamily: 'NanumGothic',
                  fontSize:20,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                  ), 
          ),
          ),
      ),
      ],
      ),
      )
        
        ],
      ),

     
      );
  }
}