import 'package:flutter/material.dart';

class LogIn extends StatefulWidget {
  const LogIn({Key? key}) : super(key: key);

  @override
  _LogInState createState() => _LogInState();
}

class _LogInState extends State<LogIn> {
  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;

    return Scaffold(
      body: SafeArea(
        child: Container(
          color: Colors.white,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Expanded(
                child: FractionallySizedBox(
                  widthFactor: 1.5, // 사진의 너비 비율 조정
                  child: Container(
                    margin: EdgeInsets.only(left: screenWidth * 0.2), // 왼쪽 거리 비율 조정
                    child: Image.asset(
                      'assets/images/login_img.png',
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
              ),

              Expanded(
                child: Align(
                  alignment: Alignment.centerRight,
                  child: FractionallySizedBox(
                    widthFactor: 0.5,
                    heightFactor: 1,
                    child: Container(
                      padding: EdgeInsets.all(screenWidth * 0.01),
                      margin: EdgeInsets.all(screenWidth * 0.01),
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(screenWidth * 0.03),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.black.withOpacity(0.2),
                            blurRadius: 4.0,
                            spreadRadius: 2.0,
                            offset: const Offset(0, 4),
                          ),
                        ],
                        border: Border.all(
                          color: Colors.black,
                          width: 1.0,
                        ),
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          SizedBox(height: screenWidth * 0.1), // 이메일 입력란과의 간격 비율 조정
                          const TextField(
                            decoration: InputDecoration(labelText: 'Enter email'),
                            keyboardType: TextInputType.emailAddress,
                          ),
                          SizedBox(height: screenWidth * 0.01), // 이메일 입력란과의 간격 비율 조정
                          const TextField(
                            decoration: InputDecoration(labelText: 'Enter password'),
                            keyboardType: TextInputType.text,
                            obscureText: true,
                          ),
                          SizedBox(height: screenWidth * 0.13),
                          SizedBox(
                            width: screenWidth * 0.15,
                            height: screenWidth * 0.03,
                            child: ElevatedButton(
                              onPressed: () {},
                              style: ElevatedButton.styleFrom(
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(screenWidth * 0.03),
                                ),
                                primary: const Color(0xFFBB2649),
                                elevation: 10,
                              ),
                              child: Text(
                                'Work With',
                                style: TextStyle(
                                  fontSize: screenWidth * 0.022,
                                  fontFamily: 'JockeyOne',
                                  fontWeight: FontWeight.w300,
                                  shadows: const [
                                    Shadow(
                                      color: Colors.black,
                                      blurRadius: 2,
                                      offset: Offset(2, 2),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ),
                        ],
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
