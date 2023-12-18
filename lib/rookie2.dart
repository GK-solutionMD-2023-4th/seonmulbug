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
      body: Column(
        children: [
      ListView(
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


        ],
      ),

      floatingActionButton: FloatingActionButton(
       onPressed: () {
      // Handle the button press
      },
      child: Icon(Icons.add),
      ),

     
      );// This trailing comma makes auto-formatting nicer for build methods.
  }
}
