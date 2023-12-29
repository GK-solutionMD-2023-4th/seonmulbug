import 'package:flutter/material.dart';

void main() {
  runApp(MyApp1());
}

class MyApp1 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: '선물벅 로그인',
      theme: ThemeData(
        primaryColor: Colors.white,
        backgroundColor: Color(0xFF2868F5),
      ),
      home: LoginPage(),
    );
  }
}

class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}


class _LoginPageState extends State<LoginPage> {
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  bool _isButtonEnabled = false;

  @override
  void initState() {
    super.initState();
    _emailController.addListener(_updateButtonState);
    _passwordController.addListener(_updateButtonState);
  }

  void _updateButtonState() {
    setState(() {
      _isButtonEnabled = _emailController.text.isNotEmpty &&
          _passwordController.text.isNotEmpty &&
          _isEmailValid(_emailController.text);
    });
  }

  bool _isEmailValid(String email) {
    Pattern pattern =
        r'^(([^<>()[\]\\.,;:\s@\"]+(\.[^<>()[\]\\.,;:\s@\"]+)*)|(\".+\"))@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\])|(([a-zA-Z\-0-9]+\.)+[a-zA-Z]{2,}))$';
    RegExp regex = RegExp(pattern as String);
    return regex.hasMatch(email);
  }

  void _navigateToSignUp() {
    Navigator.of(context).push(
      MaterialPageRoute(builder: (context) => SignUpPage()),
    );
  }

  void _navigateToEmailEntry() {
  Navigator.of(context).push(
    MaterialPageRoute(builder: (context) => EmailEntryPage()),
  );
}


  @override
  void dispose() {
    _emailController.dispose();
    _passwordController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('선물벅'),
      ),
      body: Padding(
        padding: EdgeInsets.all(16.0),
        child: Form(
          key: _formKey,
          autovalidateMode: AutovalidateMode.onUserInteraction,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              TextFormField(
                controller: _emailController,
                decoration: InputDecoration(
                  labelText: '이메일',
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(8.0),
                  ),
                  errorBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.red),
                    borderRadius: BorderRadius.circular(8.0),
                  ),
                ),
                validator: (value) {
                  if (value == null || value.isEmpty || !_isEmailValid(value)) {
                    return '이메일을 확인해주세요.';
                  }
                  return null;
                },
              ),
              SizedBox(height: 16.0),
              TextFormField(
                controller: _passwordController,
                obscureText: true,
                decoration: InputDecoration(
                  labelText: '비밀번호',
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(8.0),
                  ),
                ),
              ),
              SizedBox(height: 32.0),
              ElevatedButton(
                onPressed: _isButtonEnabled
                    ? () {
                        if (_formKey.currentState!.validate()) {
                          // 로그인 로직
                        }
                      }
                    : null,
                child: Text(
                  '로그인하기',
                  style: TextStyle(
                    color: _isButtonEnabled ? Colors.white : Colors.black,
                  ),
                ),
                style: ElevatedButton.styleFrom(
                  primary:
                      _isButtonEnabled ? Color(0xFF2868F5) : Color(0xFFD9D9D9),
                  onPrimary: Colors.white,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.zero,
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(top: 10),
                child: Align(
                  alignment: Alignment.centerRight,
                  child: TextButton(
                    onPressed: _navigateToSignUp,
                    child: Text(
                      '회원가입',
                      style: TextStyle(
                        decoration: TextDecoration.underline,
                        color: Colors.black,
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}





class SignUpPage extends StatefulWidget {
  @override
  _SignUpPageState createState() => _SignUpPageState();
}

class _SignUpPageState extends State<SignUpPage> {
  bool isAgeChecked = false;
  bool isTermsChecked = false;
  bool isPrivacyChecked = false;
  bool isMarketingChecked = false;

  // _navigateToEmailEntry 메서드 추가
  void _navigateToEmailEntry() async {
    await Navigator.of(context).push(
      MaterialPageRoute(builder: (context) => EmailEntryPage()),
    );
  }

  @override
  Widget build(BuildContext context) {
    bool canProceed = isAgeChecked && isTermsChecked && isPrivacyChecked;
    bool isAllChecked =
        isAgeChecked && isTermsChecked && isPrivacyChecked && isMarketingChecked;

    return Scaffold(
      appBar: AppBar(),
      body: Padding(
        padding: EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: EdgeInsets.only(left: 25.0),
              child: RichText(
                text: TextSpan(
                  style: TextStyle(fontSize: 20.0, color: Colors.black),
                  children: <TextSpan>[
                    TextSpan(
                      text: '선물벅 ',
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                    TextSpan(text: '서비스 이용약관에\n동의해주세요'),
                  ],
                ),
              ),
            ),
            SizedBox(height: 24),
            Expanded(
              child: ListView(
                children: [
                  CheckboxListTile(
                    title: Text('모두 동의'),
                    value: isAllChecked,
                    activeColor: Colors.transparent,
                    checkColor: Colors.black,
                    onChanged: (bool? value) {
                      setState(() {
                        isAgeChecked = value!;
                        isTermsChecked = value;
                        isPrivacyChecked = value;
                        isMarketingChecked = value;
                      });
                    },
                    controlAffinity: ListTileControlAffinity.leading,
                  ),
                  Divider(),
                  CheckboxListTile(
                    title: Text('[필수] 만 14세 이상'),
                    value: isAgeChecked,
                    activeColor: Colors.transparent,
                    checkColor: Colors.black,
                    onChanged: (bool? value) {
                      setState(() {
                        isAgeChecked = value!;
                        isAllChecked = isAgeChecked &&
                            isTermsChecked &&
                            isPrivacyChecked &&
                            isMarketingChecked;
                      });
                    },
                    controlAffinity: ListTileControlAffinity.leading,
                  ),
                  CheckboxListTile(
                    title: Text('[필수] 이용약관 동의'),
                    value: isTermsChecked,
                    activeColor: Colors.transparent,
                    checkColor: Colors.black,
                    onChanged: (bool? value) {
                      setState(() {
                        isTermsChecked = value!;
                        isAllChecked = isAgeChecked &&
                            isTermsChecked &&
                            isPrivacyChecked &&
                            isMarketingChecked;
                      });
                    },
                    controlAffinity: ListTileControlAffinity.leading,
                  ),
                  CheckboxListTile(
                    title: Text('[필수] 개인정보 처리방침 동의'),
                    value: isPrivacyChecked,
                    activeColor: Colors.transparent,
                    checkColor: Colors.black,
                    onChanged: (bool? value) {
                      setState(() {
                        isPrivacyChecked = value!;
                        isAllChecked = isAgeChecked &&
                            isTermsChecked &&
                            isPrivacyChecked &&
                            isMarketingChecked;
                      });
                    },
                    controlAffinity: ListTileControlAffinity.leading,
                  ),
                  CheckboxListTile(
                    title: Text('[선택] 광고성 정보 수신 및 마케팅 활용 동의'),
                    value: isMarketingChecked,
                    activeColor: Colors.transparent,
                    checkColor: Colors.black,
                    onChanged: (bool? value) {
                      setState(() {
                        isMarketingChecked = value!;
                        isAllChecked = isAgeChecked &&
                            isTermsChecked &&
                            isPrivacyChecked &&
                            isMarketingChecked;
                      });
                    },
                    controlAffinity: ListTileControlAffinity.leading,
                  ),
                  SizedBox(height: 20),
                  ElevatedButton(
                    onPressed: canProceed
                        ? () {
                            _navigateToEmailEntry();
                          }
                        : null,
                    child: Text('다음'),
                    style: ElevatedButton.styleFrom(
                      primary:
                          canProceed ? Color(0xFF2868F5) : Color(0xFFD9D9D9),
                      onPrimary: Colors.white,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.zero,
                      ),
                      minimumSize: Size(double.infinity, 50),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}










class EmailEntryPage extends StatefulWidget {
  @override
  _EmailEntryPageState createState() => _EmailEntryPageState();
}

class _EmailEntryPageState extends State<EmailEntryPage> {
  final TextEditingController _emailController = TextEditingController();
  bool _isEmailValid = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('이메일 입력'),
      ),
      body: Padding(
        padding: EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Text(
              '로그인에 사용할\n이메일을 입력해주세요',
              style: TextStyle(fontSize: 18.0),
            ),
            SizedBox(height: 16.0),
            TextFormField(
              controller: _emailController,
              decoration: InputDecoration(
                labelText: '이메일',
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(8.0),
                ),
                errorBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.red),
                  borderRadius: BorderRadius.circular(8.0),
                ),
              ),
              onChanged: (value) {
                setState(() {
                  _isEmailValid = _isEmailValidFunc(value);
                });
              },
            ),
            SizedBox(height: 8.0),
            _buildErrorText(),
            SizedBox(height: 24.0),
            _buildNextButton(context),
          ],
        ),
      ),
    );
  }

  Widget _buildErrorText() {
    return Text(
      _isEmailValid ? '' : '이메일을 확인해주세요.',
      style: TextStyle(color: Colors.red),
    );
  }

  Widget _buildNextButton(BuildContext context) {
    return ElevatedButton(
      onPressed: _isEmailValid
          ? () {
              // 이메일 입력 처리 로직 추가
              // 예를 들어, 입력된 이메일을 사용하여 로그인 절차를 진행하는 등의 동작
            }
          : null,
      child: Text(
        '다음',
        style: TextStyle(
          color: _isEmailValid ? Colors.white : Colors.black,
        ),
      ),
      style: ElevatedButton.styleFrom(
        primary: _isEmailValid ? Color(0xFF2868F5) : Color(0xFFD9D9D9),
        onPrimary: _isEmailValid ? Colors.white : Colors.black,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.zero,
        ),
      ),
    );
  }

  bool _isEmailValidFunc(String email) {
    Pattern pattern =
        r'^(([^<>()[\]\\.,;:\s@\"]+(\.[^<>()[\]\\.,;:\s@\"]+)*)|(\".+\"))@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\])|(([a-zA-Z\-0-9]+\.)+[a-zA-Z]{2,}))$';
    RegExp regex = RegExp(pattern as String);
    return regex.hasMatch(email);
  }
}