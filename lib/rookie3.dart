import 'package:flutter/material.dart';


class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.white),
        useMaterial3: true,
      ),
      home: const MyHomePage(title: ''),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});
  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  

  void _incrementCounter() {
    setState(() {
      // This call to setState tells the Flutter framework that something has
      // changed in this State, which causes it to rerun the build method below
      // so that the display can reflect the updated values. If we changed
      // _counter without calling setState(), then the build method would not be
      // called again, and so nothing would appear to happen.
      
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Text(widget.title),
        leading: IconButton(icon: Icon(Icons.arrow_back_ios_new), onPressed: null),

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

     
      );// This trailing comma makes auto-formatting nicer for build methods.
  }
}
