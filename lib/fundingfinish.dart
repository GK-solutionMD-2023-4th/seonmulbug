import 'package:flutter/material.dart';

class MyApp3 extends StatelessWidget {
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
         Container(
          margin: EdgeInsets.fromLTRB(26, 130, 26, 0),
          width: 337,
          height: 49,
          color: Colors.blue,
          child: Center(
            child: Text(
              '홈 화면으로 이동하기',
              style: TextStyle(
               color: Colors.white, // 텍스트 색상 변경
               fontWeight: FontWeight.normal, // 폰트 굵기 변경
               fontSize: 25, // 폰트 크기 변경
              ),
            ),
          ),
         ),
         Container(
          margin: EdgeInsets.fromLTRB(26, 20, 26, 0),
          width: 337,
          height: 49,
          color: Colors.blue,
          child: Center(
            child: Text(
              '위시리스트로 이동하기',
              style: TextStyle(
               color: Colors.white, // 텍스트 색상 변경
               fontWeight: FontWeight.normal, // 폰트 굵기 변경
               fontSize: 25, // 폰트 크기 변경
              ),
            ),
          ),
         ),
        ],
        )
    );
  }
}