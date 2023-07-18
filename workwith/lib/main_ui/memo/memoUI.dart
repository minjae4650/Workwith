import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class MemoUI extends StatefulWidget {
  const MemoUI({super.key});

  @override
  State<MemoUI> createState() => _MemoUIState();
}

class _MemoUIState extends State<MemoUI> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          // 메모장
          SizedBox(
            width: MediaQuery.of(context).size.width * 0.8,
            height: MediaQuery.of(context).size.height * 0.6,
            child: const TextField(
              maxLines: 30,
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                hintText: '메모를 입력하세요',
              ),
            ),
          ),
          SizedBox(height: MediaQuery.of(context).size.height * 0.015),
          // 여기까지가 메모장---------------------------------------
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(
                width: MediaQuery.of(context).size.width * 0.3,
                height: MediaQuery.of(context).size.height * 0.08,
                child: Padding(
                  padding: EdgeInsets.only(bottom: MediaQuery.of(context).size.height * 0.02),
                  child: TextField(
                    maxLines: 1,
                    inputFormatters: [
                      FilteringTextInputFormatter.deny(RegExp(r'\n')),
                    ],
                    decoration: const InputDecoration(
                      border: OutlineInputBorder(),
                      hintText: '추가 세부일정를 입력하세요',
                    ),
                  ),
                ),
              ),
              SizedBox(width: MediaQuery.of(context).size.width * 0.018),
              Padding(
                padding: EdgeInsets.only(bottom: MediaQuery.of(context).size.height * 0.02),
                child: OutlinedButton(
                  onPressed: () {},
                  style: OutlinedButton.styleFrom(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10.0),
                      side: const BorderSide(
                        color: Colors.black,
                        width: 1.0,
                      ),
                    ),
                    minimumSize: Size(
                      MediaQuery.of(context).size.width * 0.05,
                      MediaQuery.of(context).size.height * 0.05,
                    ),
                  ),
                  child: Text(
                    '추가하기',
                    style: TextStyle(
                      fontSize: MediaQuery.of(context).size.width * 0.014,
                      fontFamily: 'JockeyOne',
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ),
              ),
            ],
          ),

        ],
      ),

    );
  }
}
