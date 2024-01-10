import 'package:flutter/material.dart';

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: '계좌번호 입력하기',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  final FocusNode _accountNumberFocusNode = FocusNode();

  void _showBankListModal(BuildContext context) {
    showModalBottomSheet(
      context: context,
      builder: (BuildContext context) {
        return Container(
          height: 300,
          child: Column(
            children: [
              // First row
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Image.asset(
                    'assets/image/부산은행1.png',
                    width: 80,
                    height: 80,
                  ),
                  Image.asset(
                    'assets/image/kb국민은행.png',
                    width: 80,
                    height: 80,
                  ),
                  Image.asset(
                    'assets/image/기업은행.jpeg',
                    width: 80,
                    height: 80,
                  ),
                  Image.asset(
                    'assets/image/농협은행.png',
                    width: 80,
                    height: 80,
                  ),
                ],
              ),
              SizedBox(height: 20), // Vertical spacing between rows
              // Second row
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Image.asset(
                    'assets/image/카뱅.jpeg',
                    width: 80,
                    height: 80,
                  ),
                  Image.asset(
                    'assets/image/토스뱅크.png',
                    width: 80,
                    height: 80,
                  ),
                  Image.asset(
                    'assets/image/대구뱅크.png',
                    width: 80,
                    height: 80,
                  ),
                  Image.asset(
                    'assets/image/신한은행.png',
                    width: 80,
                    height: 80,
                  ),
                ],
              ),
            ],
          ),
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        FocusScope.of(context).unfocus();
      },
      child: Scaffold(
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 20.0),
                child: Text(
                  '계좌번호 입력하기',
                  style: TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              SizedBox(height: 20),
              Center(
                child: Column(
                  children: [
                    Container(
                      width: MediaQuery.of(context).size.width * 0.85,
                      height: 80,
                      margin: EdgeInsets.all(10),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        border: Border.all(color: Colors.black),
                        color: Colors.white,
                      ),
                      child: TextField(
                        focusNode: _accountNumberFocusNode,
                        keyboardType: TextInputType.number,
                        decoration: InputDecoration(
                          labelText: '계좌번호',
                          border: InputBorder.none,
                          contentPadding: EdgeInsets.symmetric(vertical: 20, horizontal: 20),
                        ),
                        onTap: () {
                          FocusScope.of(context).requestFocus(_accountNumberFocusNode);gi
                        },
                      ),
                    ),
                    SizedBox(height: 8), // Vertical spacing between rows
                    Container(
                      width: MediaQuery.of(context).size.width * 0.85,t
                      height: 80,
                      margin: EdgeInsets.all(10),
                      padding: EdgeInsets.only(left: 20),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        border: Border.all(color: Colors.black),
                        color: Colors.white,
                      ),
                      child: GestureDetector(
                        onTap: () {
                          _showBankListModal(context);
                        },
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              '은행/증권사',
                              style: TextStyle(
                                fontSize: 18,
                                fontWeight: FontWeight.w300,
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(left: 8.0),
                              child: Icon(
                                Icons.arrow_forward_ios,
                                size: 16,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
