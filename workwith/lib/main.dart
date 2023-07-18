import 'package:flutter/material.dart';
import 'package:table_calendar/table_calendar.dart';
import 'package:ui_combined/login/login_ui.dart';
import 'package:ui_combined/main_ui/calendar_ui/calendar_ui.dart';
import 'package:ui_combined/main_ui/inventory/task_inventory.dart';
import 'package:provider/provider.dart';
import 'package:ui_combined/main_ui/main_ui.dart';
import 'package:ui_combined/main_ui/providers/memoClick.dart';
import 'package:ui_combined/main_ui/memo/memoUI.dart';

void main() => runApp(
  ChangeNotifierProvider(
    create: (_) => memoClick(),
    child: const MyApp(),
  ),
);

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Calendar',
      home: UI_demo(),
    );
  }
}

class UI_demo extends StatefulWidget {
  const UI_demo({super.key});

  @override
  State<UI_demo> createState() => _UI_demoState();
}

class _UI_demoState extends State<UI_demo> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // ---------------AppBar------------------
      appBar:AppBar(
        title: Align(
          alignment: Alignment.centerLeft, // 텍스트를 왼쪽 정렬
          child: Padding(
            padding: EdgeInsets.only(left: MediaQuery.of(context).size.width * 0.017), // 오른쪽 패딩을 비율로 조정
            child: Text(
              'Work With',
              style: TextStyle(
                fontSize: MediaQuery.of(context).size.width * 0.023, // 폰트 사이즈를 비율로 조정
                fontFamily: 'JockeyOne',
                fontWeight: FontWeight.w300, // 기본보다 조금 작은 굵기
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
        elevation: 0.0,
        backgroundColor: const Color(0xFFBB2649),
        toolbarHeight: MediaQuery.of(context).size.height * 0.08, // 앱바 높이를 비율로 조정
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const SizedBox(height: 20.0),
            ElevatedButton(
              child: const Text('LogIn_UI'),
              onPressed: () => Navigator.push(
                context,
                MaterialPageRoute(builder: (_) => const LogIn()),
              ),
            ),
            const SizedBox(height: 12.0),
            ElevatedButton(
              child: const Text('Main_UI'),
              onPressed: () => Navigator.push(
                context,
                MaterialPageRoute(builder: (_) => const MainUI()),
              ),
            ),
            const SizedBox(height: 20.0),
          ],
        ),
      ),
    );
  }
}
