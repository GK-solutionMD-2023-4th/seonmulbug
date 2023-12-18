import 'package:flutter/material.dart';

class MyApp2 extends StatelessWidget {
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
          Text('펀딩 금액을 입력하세요'),
          TextField(
            decoration: InputDecoration(
          	border: OutlineInputBorder(),        
            )
          )
        ]
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
            Text('감동카드 보내고 결제하기'),
          ],
        ),
        backgroundColor: Colors.blue,
        elevation: 0,
        shape: RoundedRectangleBorder(),
      ),
    );
  }
}