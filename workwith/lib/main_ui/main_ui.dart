import 'package:flutter/material.dart';
import 'package:table_calendar/table_calendar.dart';
import 'package:ui_combined/main_ui/calendar_ui/calendar_ui.dart';
import 'package:ui_combined/main_ui/inventory/task_inventory.dart';
import 'package:provider/provider.dart';
import 'package:ui_combined/main_ui/providers/memoClick.dart';
import 'package:ui_combined/main_ui/memo/memoUI.dart';

class MainUI extends StatefulWidget {
  const MainUI({super.key});

  @override
  State<MainUI> createState() => _MainUIState();
}

class _MainUIState extends State<MainUI> {
  final CalendarFormat _calendarFormat = CalendarFormat.month;
  final DateTime _focusedDay = DateTime.now();
  DateTime? _selectedDay;

  String? dropdownValue;
  bool isDropdownOpen = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // ---------------AppBar------------------
        appBar: AppBar(
          title: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisSize: MainAxisSize.min,
            children: [
              Container(
                padding: EdgeInsets.only(
                  left: MediaQuery.of(context).size.width * 0.017,
                ),
                child: Text(
                  'Work With',
                  style: TextStyle(
                    fontSize: MediaQuery.of(context).size.width * 0.023,
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
              Container(width: MediaQuery.of(context).size.width * 0.38),
              Text(
                'Calendar',
                style: TextStyle(
                  fontSize: MediaQuery.of(context).size.width * 0.023,
                  fontFamily: 'JockeyOne',
                  fontWeight: FontWeight.w300,
                ),
              ),
              const Spacer(), // 화면 오른쪽으로 모든 공간을 차지하도록 함
              Text(
                'Task',
                style: TextStyle(
                  fontSize: MediaQuery.of(context).size.width * 0.023,
                  fontFamily: 'JockeyOne',
                  fontWeight: FontWeight.w300,
                ),
              ),
              Container(
                width: MediaQuery.of(context).size.width * 0.25, // 오른쪽 끝 간격 설정
              ),
            ],
          ),
          elevation: 0.0,
          backgroundColor: const Color(0xFFBB2649),
          toolbarHeight: MediaQuery.of(context).size.height * 0.08,
        ),
        // --------------------------------------------
        body: SafeArea(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Expanded(
                child: Container(
                  alignment: Alignment.centerLeft,
                  child: const TaskInventoryUI(),
                ),
              ),
              Expanded(
                child: Align(
                  alignment: Alignment.center,
                  child: Container(
                    height: MediaQuery.of(context).size.height * 0.7,
                    width: MediaQuery.of(context).size.width * 0.8, // 원하는 비율로 조정하세요.
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(70.0),
                      boxShadow: [
                        BoxShadow(
                          color: const Color(0xFFBB2649).withOpacity(0.2),
                          blurRadius: 4.0,
                          spreadRadius: 9.0,
                          offset: const Offset(0, 2),
                        ),
                      ],
                      border: Border.all(
                        color: const Color(0xFFBB2649),
                        width: 1.0,
                      ),
                    ),
                    child: Align(
                      alignment: Alignment.center,
                      child: Consumer<memoClick>(
                        builder: (context, myState, child) {
                          return myState.showMemoUI ? const MemoUI() : const BasicCalendar();
                        },
                      ),
                    ),
                  ),
                ),
              ),
              SizedBox(width: MediaQuery.of(context).size.width * 0.16,)
            ],
          ),
        )


    );
  }
}
