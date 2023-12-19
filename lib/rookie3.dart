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
            
                
              
          
           ],//children
          )
          ],//children
        ),
        SizedBox(height: 72),
      Align(
        alignment: Alignment.bottomCenter,
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
        
        ],
      ),

     
      );// This trailing comma makes auto-formatting nicer for build methods.
  }
}
