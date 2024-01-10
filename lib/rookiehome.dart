import 'package:flutter/material.dart';
import 'package:seonmulbug/rookie5.dart';

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
            GestureDetector(
             onTap: (){
                Navigator.push(context, MaterialPageRoute(builder: (context) => page())
                );
              },
            child: Container(
             width: MediaQuery.of(context).size.width, // 너비 설정
             height: 50.0,
             decoration: BoxDecoration(
                color: const Color.fromARGB(255, 214, 214, 214)
             ),
             child: Row(
             children: [
              SizedBox(width: 8),
              Text(
              '검색어를 입력해 주세요',
             ),
             SizedBox(width: 167),
             IconButton(
              icon:Icon(Icons.search),
              onPressed: () {},
              ),
             ],
             ),
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
            GestureDetector(
              // onTap: (){
              //       Navigator.push(context, MaterialPageRoute(
              //         builder: (context) => pppage()
              //         ));
              //     },
            child: Container(
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

class page extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Text(''),
        leading: 
            IconButton(
              icon: Icon(Icons.arrow_back_ios_new), 
              onPressed: (){
                Navigator.pop(context);
              },
              color: Colors.black,
              ),
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
                SizedBox(width: 8),
              ],
            ),

          
            
            Container(
             width: MediaQuery.of(context).size.width,
             height: 567,
             color: Color.fromARGB(255, 216, 216, 216),
             child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
               SizedBox(height: 20),
              Text(
               '추천검색어',
                style: TextStyle(
                fontSize: 15,
                fontWeight: FontWeight.bold,
                color: Colors.black,
               ),
              ),
              SizedBox(height: 14,),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children:[
              Container(
                padding: EdgeInsets.only(left: 11.0, right: 8.0, top: 3.0, bottom: 3.0),
                width: 80,
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
                width: 80,
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
                width: 80,
                decoration: BoxDecoration(
                color: Colors.blue,
                borderRadius: BorderRadius.circular(30.0),
                ),
                child: Row(

                children: [
                Text(
                  '자전거',
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

              

                ]
             ),

            SizedBox(height: 8,),


             Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children:[
              Container(
                padding: EdgeInsets.only(left: 11.0, right: 8.0, top: 3.0, bottom: 3.0),
                width: 90,
                decoration: BoxDecoration(
                color: Colors.blue,
                borderRadius: BorderRadius.circular(30.0),
                ),
                child: Row(

                children: [
                Text(
                  '애플워치',
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
                width: 70,
                decoration: BoxDecoration(
                color: Colors.blue,
                borderRadius: BorderRadius.circular(30.0),
                ),
                child: Row(

                children: [
                Text(
                  '의자',
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
                width: 70,
                decoration: BoxDecoration(
                color: Colors.blue,
                borderRadius: BorderRadius.circular(30.0),
                ),
                child: Row(

                children: [
                Text(
                  '신발',
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
                width: 70,
                decoration: BoxDecoration(
                color: Colors.blue,
                borderRadius: BorderRadius.circular(30.0),
                ),
                child: Row(

                children: [
                Text(
                  '모자',
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


                ]
             ),


               SizedBox(height: 40),
                Text(
                 '추천하는 선물',
                   style: TextStyle(
                   fontSize: 15,
                   fontWeight: FontWeight.bold,
                   color: Colors.black,
                   ),
                  ),
                  SizedBox(height: 14),

                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
              Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
               ClipOval(
                 child: Image.network(
                 'https://i.pinimg.com/564x/e8/60/be/e860beedc637597bc225eee5d5481e62.jpg', // 이미지 URL에 맞게 수정
                  width: 98, // 이미지 너비에 맞게 수정
                  height: 98, // 이미지 높이에 맞게 수정
                  fit: BoxFit.cover, // 이미지 채우기 모드에 맞게 수정
                  ),
                 ),
                 SizedBox(height: 10),
                 Text(
                  'Apple 애플\n워치 9 GPS'
                 ),
                 Text(
                  '599,000원'
                 ),
                ],
              ),
 
                 SizedBox(width: 10),
  
                Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                children: [
                 ClipOval(
                 child: Image.network(
                 'https://i.pinimg.com/564x/aa/53/a1/aa53a18bcc6a07e2aca4531c61d70a71.jpg', // 이미지 URL에 맞게 수정
                  width: 98, // 이미지 너비에 맞게 수정
                  height: 98, // 이미지 높이에 맞게 수정
                  fit: BoxFit.cover, // 이미지 채우기 모드에 맞게 수정
                  ),
                 ),
                 SizedBox(height: 10),
                 Text(
                  'Apple 맥북\n프로 13 M2'
                 ),
                 Text(
                  '1,833,990원'
                 ),
                ],
              ),

                 SizedBox(width: 10),

                 Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                children: [
                 ClipOval(
                 child: Image.network(
                 'https://i.pinimg.com/564x/38/67/1c/38671c5af20f2998fe8f82df4a1dff14.jpg', // 이미지 URL에 맞게 수정
                  width: 98, // 이미지 너비에 맞게 수정
                  height: 98, // 이미지 높이에 맞게 수정
                  fit: BoxFit.cover, // 이미지 채우기 모드에 맞게 수정
                  ),
                 ),
                 SizedBox(height: 10),
                 Text(
                  '[슈어] 무선\n노이즈 캔슬\n링 헤드폰 \n(AONIC 50)'
                 ),
                 Text(
                  '469,000원'
                 ),
                ],
              ),

                  ],
                  ),

             ]//children
             ),
            ),

          

            
          ],
        ),
      ),
    );
  }
}