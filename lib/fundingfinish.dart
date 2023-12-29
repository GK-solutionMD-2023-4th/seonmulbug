import 'package:flutter/material.dart';
import 'package:seonmulbug/wishlist.dart';


class MyApp3 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blueGrey,
      ),
      home: MyHomePage5(),
    );
  }
}

class MyHomePage5 extends StatefulWidget {
  @override
  State<MyHomePage5> createState() => _MyHomePage5State();
}


class _MyHomePage5State extends State<MyHomePage5> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
         Text(
          '펀딩이 완료되었습니다',
           style: TextStyle(
               fontWeight: FontWeight.bold, // 폰트 굵기 변경
               fontSize: 30, // 폰트 크기 변경
              ),),
         SizedBox(
          height: 20,
         ),
         
         ButtonDesign('홈 화면으로 이동하기'),
         SizedBox(height: 20),

         GestureDetector(
          onTap:(){
          Navigator.push(context, MaterialPageRoute(
            builder: (context) => MyHomePage3()));
         },
         child: ButtonDesign('위시리스트로 이동하기'),
         ),
        ],
        ),
    );
  }
}

Widget ButtonDesign(String text) {
  return Container(
          margin: EdgeInsets.fromLTRB(26, 0, 26, 0),
          width: 337,
          height: 49,
          color: Colors.blue,
          child: Center(
            child: Text(
              text,
              style: TextStyle(
               color: Colors.white, // 텍스트 색상 변경
               fontWeight: FontWeight.normal, // 폰트 굵기 변경
               fontSize: 25, // 폰트 크기 변경
              ),
            ),
          ),
         );
        
}