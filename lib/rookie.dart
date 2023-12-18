import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // TRY THIS: Try running your application with "flutter run". You'll see
        // the application has a blue toolbar. Then, without quitting the app,
        // try changing the seedColor in the colorScheme below to Colors.green
        // and then invoke "hot reload" (save your changes or press the "hot
        // reload" button in a Flutter-supported IDE, or press "r" if you used
        // the command line to start the app).
        //
        // Notice that the counter didn't reset back to zero; the application
        // state is not lost during the reload. To reset the state, use hot
        // restart instead.
        //
        // This works for code too, not just values: Most code changes can be
        // tested with just a hot reload.
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.white),
        useMaterial3: true,
      ),
      home: const MyHomePage(title: ''),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

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
    // This method is rerun every time setState is called, for instance as done
    // by the _incrementCounter method above.
    //
    // The Flutter framework has been optimized to make rerunning build methods
    // fast, so that you can just rebuild anything that needs updating rather
    // than having to individually change instances of widgets.
    return Scaffold(
      appBar: AppBar(
        // TRY THIS: Try changing the color here to a specific color (to
        // Colors.amber, perhaps?) and trigger a hot reload to see the AppBar
        // change color while the other colors stay the same.
        backgroundColor: Colors.white,
        // Here we take the value from the MyHomePage object that was created by
        // the App.build method, and use it to set our appbar title.
        title: Text(widget.title),
        leading: IconButton(icon: Icon(Icons.arrow_back_ios_new), onPressed: null),

      ),
      body: ListView(
        // Center is a layout widget. It takes a single child and positions it
        // in the middle of the parent.
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
              )

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
              )

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
              )

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
              )

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
              )

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
              )

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
              )
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
              )
                ],
              ),
              ],
             ),



           ],
          )
        ],
        ),
      );// This trailing comma makes auto-formatting nicer for build methods.
  }
}
