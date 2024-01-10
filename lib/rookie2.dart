import 'package:flutter/material.dart';


class MyApp9 extends StatelessWidget {
  const MyApp9({super.key});

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
