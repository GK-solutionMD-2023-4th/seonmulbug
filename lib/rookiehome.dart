import 'package:flutter/material.dart';

class MyApp10 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Product Search',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: ProductSearchPage(),
    );
  }
}

class ProductSearchPage extends StatefulWidget {
  @override
  _ProductSearchPageState createState() => _ProductSearchPageState();
}

class _ProductSearchPageState extends State<ProductSearchPage> {
  TextEditingController _searchController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('선물벅',
        style: TextStyle(
          color: Colors.black,
          fontWeight: FontWeight.bold,
          fontSize: 25,
        ),),
        backgroundColor: Colors.white,
        elevation: 0,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // 검색어 입력 부분
            Container(
             width: MediaQuery.of(context).size.width, // 너비 설정
             height: 50.0,
             decoration: BoxDecoration(
                color: const Color.fromARGB(255, 214, 214, 214)
             ),
             child: Row(
             children: [
              SizedBox(width: 8),
              Text(
              '검색어를 입력해 주세요'
             ),
             SizedBox(width: 167),
             IconButton(
              icon:Icon(Icons.search),
              onPressed: () {},
              ),
             ],
             ),
            ),
            SizedBox(height: 10),
            Text(
             '곧 생일인 친구' ,
             style: TextStyle(
              fontSize: 20.0, // 폰트 크기 설정
              color: Colors.black, // 텍스트 색상 설정
              fontWeight: FontWeight.bold,
             ),
            ),
            SizedBox(height: 8),
            Container(
              width: MediaQuery.of(context).size.width, // 너비 설정
              height: 100.0, // 높이 설정
               decoration: BoxDecoration(
                color: const Color.fromARGB(255, 213, 213, 213), // 배경색 설정
                borderRadius: BorderRadius.circular(6.0), 
              ),
              child: Align(
                alignment: Alignment.centerLeft,
                child: Row(
                children: [
                    SizedBox(width: 16),
                  Text(
                  '한서연   12/30',
                  style: TextStyle(
                    fontSize: 16.0, // 폰트 크기 설정
                    color: Colors.black, // 텍스트 색상 설정
                    fontWeight: FontWeight.normal,
                  ),
                  ),
                ],
                  ),
                  ),
            ),
            SizedBox(height: 8),
            Container(
              width: MediaQuery.of(context).size.width,
              height: 49,
              decoration: BoxDecoration(
                color: Colors.blue, // 배경색 설정
              ),
              child: Center(
                child: Text(
                  '나의 위시리스트',
                  style: TextStyle(
                    fontSize: 16.0,
                    color: Colors.white,
                    fontWeight: FontWeight.normal,
                  ),
                ),
              ),
            ),
            SizedBox(height: 5),
            Align(
              alignment: Alignment.centerRight,
              child: Text(
              '로그아웃',
              style: TextStyle(
                decoration: TextDecoration.underline,
              ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}