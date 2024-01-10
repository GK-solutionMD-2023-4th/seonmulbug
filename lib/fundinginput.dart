import 'package:flutter/material.dart';
import 'package:seonmulbug/givecard.dart';

class MyApp2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blueGrey,
      ),
      home: MyHomePage4(),
    );
  }
}

class MyHomePage4 extends StatefulWidget {
  @override
  State<MyHomePage4> createState() => _MyHomePage4State();
}

class _MyHomePage4State extends State<MyHomePage4> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        
        leading: IconButton(
          icon: Icon(Icons.arrow_back_ios_new), 
          color: Colors.black,
          onPressed:(){
          Navigator.pop(context);
         }),
      ),
      body: Column(
        children: [
          SizedBox(height: 200),
          Text(
          '펀딩 금액을 입력해주세요',
           style: const TextStyle(
            fontSize: 25,
            fontWeight: FontWeight.bold
           ),
           ),
          SizedBox(height: 50),
          Container(
             width: 337, // 너비 조절
             child: TextField(
               cursorWidth: 2,
               decoration: InputDecoration(
                border: OutlineInputBorder(),
               ),
             ),
          ),

        GestureDetector(
        onTap:(){
          Navigator.push(context,MaterialPageRoute(
            builder: (context) => MyHomePage2()));

        },

        child :Container(
          margin: EdgeInsets.fromLTRB(26, 20, 26, 0),
          width: 337,
          height: 49,
          color: Colors.blue,
          child: Center(
            child: Text(
              '감동카드 보내고 결제하기',
              style: TextStyle(
               color: Colors.white, // 텍스트 색상 변경
               fontWeight: FontWeight.normal, // 폰트 굵기 변경
               fontSize: 25, // 폰트 크기 변경
              ),
            ),
          ),
         ),
      ),
        ]
      ),
    );
  }
}