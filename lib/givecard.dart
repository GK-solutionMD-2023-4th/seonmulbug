import 'package:flutter/material.dart';

class MyApp4 extends StatelessWidget {
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

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
      ListView(
        shrinkWrap: true,
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
              Container(
               width: 337,
               height: 100, // 너비 조절
               child: TextField(
                 cursorWidth: 2,
                 decoration: InputDecoration(
                  border: OutlineInputBorder(),
                 ),
               ),
          ),
           ],//children
          )
          ],//children
        ),

      Container(
        margin: EdgeInsets.fromLTRB(20, 30, 0, 0),
        child: Align(
        alignment : Alignment.centerLeft,
        child: Text(
          '결제정보',
           style: TextStyle(
            fontWeight: FontWeight.bold, // 폰트 굵기 변경
            fontSize: 25, // 폰트 크기 변경
              ),
        ),
        ),
      ),
      
      Container(
        child: Row(
          children: [
           Container(
            margin: EdgeInsets.fromLTRB(20, 20, 0, 16),
            child: Align(
              alignment : Alignment.centerLeft,
              child: Text( 
               '최종 결제금액',
               style: TextStyle(
                 fontWeight: FontWeight.normal, // 폰트 굵기 변경
                 fontSize: 15, // 폰트 크기 변경
               ),
              ),
            ),
           ),
           Spacer(),
           Container(
            margin: EdgeInsets.fromLTRB(0, 20, 20, 16),
            child: Align(
              alignment : Alignment.centerRight,
              child: Text( 
               '13,900원',
               style: TextStyle(
                 fontWeight: FontWeight.normal, // 폰트 굵기 변경
                 fontSize: 15, 
               ),
              ),
            ),
           ),
           
          ],
          ),
        
      ),


      Align(
        alignment: Alignment.bottomCenter,
      child: Container(
        width: MediaQuery.of(context).size.width,
        height: 49,
        color: Colors.blue,
          child: Center(
          child: Text(
           '13,900원 결제하기',
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
        
        ],
      ),
    );
    }
    }