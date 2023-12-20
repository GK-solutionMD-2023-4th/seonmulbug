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
        leading:
            IconButton(icon: Icon(Icons.arrow_back_ios_new), onPressed: null),
        actions: [
          IconButton(
            icon: Icon(Icons.search),
            onPressed: () {
              // TODO: 돋보기 아이콘을 눌렀을 때 수행할 동작을 추가하세요.
              print('돋보기 아이콘을 눌렀습니다.');
            },
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // 검색어 입력 부분
            TextField(
              decoration: InputDecoration(
                hintText: '검색어를 입력해 주세요.',
                filled: true,
                fillColor: Colors.grey[200],
                border: InputBorder.none,
              ),
              onChanged: (text) {
                // TODO: 검색어 입력 변화 처리
                print('Typed: $text');
              },
            ),
            SizedBox(height: 16),

            Wrap(
              spacing: 8.0,
              runSpacing: 8.0,
              children: [
                Row(
                  children: [
                    Text(
              '최근 검색어',
              style: TextStyle(
                fontSize: 15,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(width: 8),
            // TODO: 추천 검색어를 나타내는 부분을 추가

                    Container(
                      padding: EdgeInsets.only(left: 11.0, right: 8.0, top: 3.0, bottom: 3.0),
                      decoration: BoxDecoration(
                        color: Colors.blue,
                        borderRadius: BorderRadius.circular(30.0),
                      ),
                      child: Row(

                        children: [
                          Text(
                            '아이폰',
                            style: TextStyle(
                              fontSize: 12,
                              fontWeight: FontWeight.bold,
                              color: Colors.white,
                            ),
                          ),
                          SizedBox(
                            width: 24,
                            height: 24,
                            child: IconButton(
                              padding: EdgeInsets.zero,
                              constraints: BoxConstraints(),
                              icon: Icon(Icons.clear,
                              size: 14,
                              color: Colors.white,),
                              onPressed: () {
                                // TODO: IconButton 클릭 시 수행할 동작 추가
                              },
                            ),
                          ),
                        ],
                      ),
                    ),
                    
                     SizedBox(width: 8,),

                      Container(
                      padding: EdgeInsets.only(left: 11.0, right: 8.0, top: 3.0, bottom: 3.0),
                      decoration: BoxDecoration(
                        color: Colors.blue,
                        borderRadius: BorderRadius.circular(30.0),
                      ),
                      child: Row(

                        children: [
                          Text(
                            '아이폰',
                            style: TextStyle(
                              fontSize: 12,
                              fontWeight: FontWeight.bold,
                              color: Colors.white,
                            ),
                          ),
                          SizedBox(
                            width: 24,
                            height: 24,
                            child: IconButton(
                              padding: EdgeInsets.zero,
                              constraints: BoxConstraints(),
                              icon: Icon(Icons.clear,
                              size: 14,
                              color: Colors.white,),
                              onPressed: () {
                                // TODO: IconButton 클릭 시 수행할 동작 추가
                              },
                            ),
                          ),
                        ],
                      ),
                    ),


                  ],
                ),
              ],
            ),

            
            Container(
             width: 200,
             height: 100,
             color: Colors.grey,
            ),

            
          ],
        ),
      ),
    );
  }
}
