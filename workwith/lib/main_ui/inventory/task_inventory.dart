import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:ui_combined/main_ui/providers/memoClick.dart';

// Expanded 로 해야될 지 잘 구분이 안 가서 먼저 고정으로 만들었습니다

class TaskInventoryUI extends StatefulWidget {
  const TaskInventoryUI({super.key});

  @override
  State<TaskInventoryUI> createState() => _TaskInventoryUIState();
}

class _TaskInventoryUIState extends State<TaskInventoryUI> {
  // 나중에 배열로 처리해야 될 부분
  bool isDropdownOpenTask1 = false;
  bool isDropdownOpenTask2 = false;
  bool isDropdownOpenTask3 = false;
  bool isDropdownOpenTask4 = false;

  bool _isCheckedTask1_1 = false;
  bool _isCheckedTask1_2 = false;
  bool _isCheckedTask1_3 = false;

  bool _isCheckedTask2_1 = false;
  bool _isCheckedTask2_2 = false;
  bool _isCheckedTask2_3 = false;

  bool _isCheckedTask3_1 = false;
  bool _isCheckedTask3_2 = false;

  bool _isCheckedTask4_1 = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: MediaQuery.of(context).size.width * 0.25, // 전체 가로의 25%
        decoration: BoxDecoration(
          border: Border.all(
            color: Colors.black,
            width: 1,
          ),
        ),

        child: Column(
          children: [
            // 프로필 부분------------------------------------------------------------
            Container(
              height: MediaQuery.of(context).size.height *
                  0.25, // 바깥 컨테이너 높이에 대한 비율
              decoration: BoxDecoration(
                border: Border.all(
                  color: Colors.black,
                  width: 1.0,
                ),
              ),
              child: Stack(
                alignment: Alignment.center, // 원이 세로 중앙에 위치하도록 설정
                children: [
                  Positioned(
                      left: MediaQuery.of(context).size.width *
                          0.02, // 컨테이너 가로 길이에 대한 비율
                      child: SizedBox(
                        width: MediaQuery.of(context).size.width * 0.08,
                        height: MediaQuery.of(context).size.width * 0.08,
                        child: Stack(
                          children: [
                            Positioned.fill(
                              child: Container(
                                decoration: BoxDecoration(
                                  shape: BoxShape.circle,
                                  color: Colors.grey,
                                  border: Border.all(
                                    color: Colors.black,
                                    width: 1.0,
                                  ),
                                ),
                              ),
                            ),
                            Positioned.fill(
                              child: ClipOval(
                                child: Image.asset(
                                  'assets/images/basic_profile.jpg', // 이미지 파일의 경로를 입력하세요.
                                  fit: BoxFit.cover,
                                ),
                              ),
                            ),
                          ],
                        ),
                      )),
                  Positioned(
                    left: MediaQuery.of(context).size.width *
                        0.11, // 텍스트를 원보다 조금 더 오른쪽에 위치하도록 설정
                    top: MediaQuery.of(context).size.height *
                        0.06, // 첫 번째 텍스트의 위치
                    child: Align(
                      alignment: Alignment.topRight,
                      child: Text(
                        '직위',
                        style: TextStyle(
                          fontSize: MediaQuery.of(context).size.width * 0.015,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ),
                  Positioned(
                    left: MediaQuery.of(context).size.width *
                        0.11, // 텍스트를 원보다 조금 더 오른쪽에 위치하도록 설정
                    top: MediaQuery.of(context).size.height *
                        0.11, // 두 번째 텍스트의 위치
                    child: Align(
                      alignment: Alignment.topRight,
                      child: Text(
                        '상태',
                        style: TextStyle(
                          fontSize: MediaQuery.of(context).size.width * 0.015,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ),
                  Positioned(
                    left: MediaQuery.of(context).size.width *
                        0.1167, // 텍스트를 원보다 조금 더 오른쪽에 위치하도록 설정
                    top: MediaQuery.of(context).size.height *
                        0.155, // 두 번째 텍스트의 위치
                    child: Align(
                      alignment: Alignment.topRight,
                      child: Container(
                        width: MediaQuery.of(context).size.width * 0.015,
                        height: MediaQuery.of(context).size.width * 0.015,
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          color: Colors.lightGreenAccent,
                          border: Border.all(
                            color: Colors.black,
                            width: 1.0,
                          ),
                          boxShadow: [
                            BoxShadow(
                              color: Colors.black.withOpacity(0.5),
                              blurRadius: 4.0,
                              offset: const Offset(2, 2),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                  Positioned(
                    left: MediaQuery.of(context).size.width *
                        0.15, // 텍스트를 원보다 조금 더 오른쪽에 위치하도록 설정
                    top: MediaQuery.of(context).size.height *
                        0.13, // 세 번째 텍스트의 위치
                    child: Align(
                      alignment: Alignment.bottomRight,
                      child: Text(
                        '일하는 중인 것',
                        style: TextStyle(
                          fontSize: MediaQuery.of(context).size.width * 0.015,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ),
                  Positioned(
                    left: MediaQuery.of(context).size.width *
                        0.15, // 텍스트를 원보다 조금 더 오른쪽에 위치하도록 설정
                    top: MediaQuery.of(context).size.height *
                        0.06, // 네 번째 텍스트의 위치
                    child: Align(
                      alignment: Alignment.center, // 텍스트를 가운데로 정렬
                      child: Container(
                        width: MediaQuery.of(context).size.width * 0.09,
                        height: MediaQuery.of(context).size.width * 0.027,
                        decoration: BoxDecoration(
                          shape: BoxShape.rectangle,
                          borderRadius:
                              BorderRadius.circular(10.0), // 라운드가 들어간 컨테이너
                          color: Colors.grey,
                        ),
                        padding: const EdgeInsets.all(8.0),
                        child: Text(
                          '이름',
                          style: TextStyle(
                            fontSize: MediaQuery.of(context).size.width * 0.015,
                            fontWeight: FontWeight.bold,
                          ),
                          textAlign: TextAlign.center, // 텍스트를 가운데로 정렬
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),

// ------------------------- 여기까지 프로필 -----------------------------------

            // Task 부분
            Expanded(
              child: SingleChildScrollView(
                scrollDirection: Axis.vertical,
                child: Column(
                  children: [
                    // Task1 부분
                    Container(
                      height: MediaQuery.of(context).size.height * 0.125,
                      decoration: BoxDecoration(
                        border: Border.all(
                          color: Colors.black,
                          width: 1.0,
                        ),
                      ),
                      child: Row(
                        children: [
                          SizedBox(
                            width: MediaQuery.of(context).size.width * 0.01,
                          ),
                          Text(
                            'task 1',
                            style: TextStyle(
                              fontSize:
                                  MediaQuery.of(context).size.width * 0.023,
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
                          SizedBox(
                            width: MediaQuery.of(context).size.width * 0.033,
                          ),
                          Text(
                            'when',
                            style: TextStyle(
                              fontSize:
                                  MediaQuery.of(context).size.width * 0.023,
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
                          SizedBox(
                            width: MediaQuery.of(context).size.width * 0.05,
                          ),

                          //여기서부터 버튼
                          GestureDetector(
                            onTap: () {
                              setState(() {
                                isDropdownOpenTask1 = !isDropdownOpenTask1;
                              });
                            },
                            child: Container(
                              width: MediaQuery.of(context).size.width * 0.023,
                              height: MediaQuery.of(context).size.width * 0.023,
                              decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                color: Colors.grey,
                                border: Border.all(
                                  color: Colors.black,
                                  width: 1.0,
                                ),
                              ),
                              child: Stack(
                                children: [
                                  Align(
                                    alignment: isDropdownOpenTask1
                                        ? Alignment.center
                                        : Alignment.centerLeft,
                                    child: Transform.rotate(
                                      angle: isDropdownOpenTask1
                                          ? 0
                                          : 1.5708, // 90도에 해당하는 라디안 값
                                      child: Icon(
                                        Icons.arrow_drop_down,
                                        size:
                                            MediaQuery.of(context).size.width *
                                                0.023,
                                        color: Colors.black,
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                          //여기까지 버튼
                        ],
                      ),
                    ),
                    if (isDropdownOpenTask1)
                      Column(
                        children: [
                          Container(
                              height: MediaQuery.of(context).size.width *
                                  0.04, // 컨테이너 높이 조정
                              color: Colors.grey[350],
                              child: Row(
                                children: [
                                  SizedBox(
                                    width: MediaQuery.of(context).size.width *
                                        0.018,
                                  ),
                                  Text(
                                    'task1 에 대한 세부계획1',
                                    style: TextStyle(
                                      fontSize:
                                          MediaQuery.of(context).size.width *
                                              0.018,
                                      fontFamily: 'JockeyOne',
                                      fontWeight: FontWeight.w300,
                                    ),
                                  ),
                                  SizedBox(
                                    width: MediaQuery.of(context).size.width *
                                        0.018,
                                  ),
                                  Transform.scale(
                                    scale: MediaQuery.of(context).size.width *
                                        0.0007, // 크기를 조정하기 위해 scale 값을 조정하세요.
                                    child: Checkbox(
                                      value: _isCheckedTask1_1,
                                      onChanged: (newValue) {
                                        setState(() {
                                          _isCheckedTask1_1 =
                                              !_isCheckedTask1_1;
                                        });
                                      },
                                    ),
                                  ),
                                ],
                              )),
                          Container(
                              height: MediaQuery.of(context).size.width *
                                  0.04, // 컨테이너 높이 조정
                              color: Colors.grey[350],
                              child: Row(
                                children: [
                                  SizedBox(
                                    width: MediaQuery.of(context).size.width *
                                        0.018,
                                  ),
                                  Text(
                                    'task1 에 대한 세부계획2',
                                    style: TextStyle(
                                      fontSize:
                                          MediaQuery.of(context).size.width *
                                              0.018,
                                      fontFamily: 'JockeyOne',
                                      fontWeight: FontWeight.w300,
                                    ),
                                  ),
                                  SizedBox(
                                    width: MediaQuery.of(context).size.width *
                                        0.018,
                                  ),
                                  Transform.scale(
                                    scale: MediaQuery.of(context).size.width *
                                        0.0007, // 크기를 조정하기 위해 scale 값을 조정하세요.
                                    child: Checkbox(
                                      value: _isCheckedTask1_2,
                                      onChanged: (newValue) {
                                        setState(() {
                                          _isCheckedTask1_2 =
                                              !_isCheckedTask1_2;
                                        });
                                      },
                                    ),
                                  ),
                                ],
                              )),
                          Container(
                              height: MediaQuery.of(context).size.width *
                                  0.04, // 컨테이너 높이 조정
                              color: Colors.grey[350],
                              child: Row(
                                children: [
                                  SizedBox(
                                    width: MediaQuery.of(context).size.width *
                                        0.018,
                                  ),
                                  Text(
                                    'task1 에 대한 세부계획3',
                                    style: TextStyle(
                                      fontSize:
                                          MediaQuery.of(context).size.width *
                                              0.018,
                                      fontFamily: 'JockeyOne',
                                      fontWeight: FontWeight.w300,
                                    ),
                                  ),
                                  SizedBox(
                                    width: MediaQuery.of(context).size.width *
                                        0.018,
                                  ),
                                  Transform.scale(
                                    scale: MediaQuery.of(context).size.width *
                                        0.0007, // 크기를 조정하기 위해 scale 값을 조정하세요.
                                    child: Checkbox(
                                      value: _isCheckedTask1_3,
                                      onChanged: (newValue) {
                                        setState(() {
                                          _isCheckedTask1_3 =
                                              !_isCheckedTask1_3;
                                        });
                                      },
                                    ),
                                  ),
                                ],
                              )),
                          Container(
                              color: Colors.grey[350],
                              child: Row(
                                children: [
                                  const Spacer(),
                                  Text(
                                    '메모장',
                                    textAlign: TextAlign.center,
                                    style: TextStyle(
                                      fontSize:
                                          MediaQuery.of(context).size.width *
                                              0.018,
                                      fontFamily: 'JockeyOne',
                                      fontWeight: FontWeight.w300,
                                    ),
                                  ),
                                  Spacer(),
                                  Transform.scale(
                                    scale: MediaQuery.of(context).size.width *
                                        0.0008, // 크기를 조정하기 위해 scale 값을 조정하세요.
                                    child: IconButton(
                                      onPressed: () {
                                        Provider.of<memoClick>(context,
                                                listen: false)
                                            .toggleView();
                                      },
                                      icon: const Icon(Icons.add),
                                    ),
                                  ),
                                  SizedBox(
                                    width: MediaQuery.of(context).size.width *
                                        0.01,
                                  ),
                                ],
                              )),
                        ],
                      ),
// ------------------------- 여기까지 Task1 -----------------------------------

                    // Task2 부분
                    Container(
                      height: MediaQuery.of(context).size.height * 0.125,
                      decoration: BoxDecoration(
                        border: Border.all(
                          color: Colors.black,
                          width: 1.0,
                        ),
                      ),
                      child: Row(
                        children: [
                          SizedBox(
                            width: MediaQuery.of(context).size.width * 0.01,
                          ),
                          Text(
                            'task 2',
                            style: TextStyle(
                              fontSize:
                                  MediaQuery.of(context).size.width * 0.023,
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
                          SizedBox(
                            width: MediaQuery.of(context).size.width * 0.033,
                          ),
                          Text(
                            'when',
                            style: TextStyle(
                              fontSize:
                                  MediaQuery.of(context).size.width * 0.023,
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
                          SizedBox(
                            width: MediaQuery.of(context).size.width * 0.05,
                          ),

                          //여기서부터 버튼
                          GestureDetector(
                            onTap: () {
                              setState(() {
                                isDropdownOpenTask2 = !isDropdownOpenTask2;
                              });
                            },
                            child: Container(
                              width: MediaQuery.of(context).size.width * 0.023,
                              height: MediaQuery.of(context).size.width * 0.023,
                              decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                color: Colors.grey,
                                border: Border.all(
                                  color: Colors.black,
                                  width: 1.0,
                                ),
                              ),
                              child: Stack(
                                children: [
                                  Align(
                                    alignment: isDropdownOpenTask2
                                        ? Alignment.center
                                        : Alignment.centerLeft,
                                    child: Transform.rotate(
                                      angle: isDropdownOpenTask2
                                          ? 0
                                          : 1.5708, // 90도에 해당하는 라디안 값
                                      child: Icon(
                                        Icons.arrow_drop_down,
                                        size:
                                            MediaQuery.of(context).size.width *
                                                0.023,
                                        color: Colors.black,
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                          //여기까지 버튼
                        ],
                      ),
                    ),
                    if (isDropdownOpenTask2)
                      Column(
                        children: [
                          Container(
                              height: MediaQuery.of(context).size.width *
                                  0.04, // 컨테이너 높이 조정
                              color: Colors.grey[350],
                              child: Row(
                                children: [
                                  SizedBox(
                                    width: MediaQuery.of(context).size.width *
                                        0.018,
                                  ),
                                  Text(
                                    'task2 에 대한 세부계획1',
                                    style: TextStyle(
                                      fontSize:
                                          MediaQuery.of(context).size.width *
                                              0.018,
                                      fontFamily: 'JockeyOne',
                                      fontWeight: FontWeight.w300,
                                    ),
                                  ),
                                  SizedBox(
                                    width: MediaQuery.of(context).size.width *
                                        0.018,
                                  ),
                                  Transform.scale(
                                    scale: MediaQuery.of(context).size.width *
                                        0.0007, // 크기를 조정하기 위해 scale 값을 조정하세요.
                                    child: Checkbox(
                                      value: _isCheckedTask2_1,
                                      onChanged: (newValue) {
                                        setState(() {
                                          _isCheckedTask2_1 =
                                              !_isCheckedTask2_1;
                                        });
                                      },
                                    ),
                                  ),
                                ],
                              )),
                          Container(
                              height: MediaQuery.of(context).size.width *
                                  0.04, // 컨테이너 높이 조정
                              color: Colors.grey[350],
                              child: Row(
                                children: [
                                  SizedBox(
                                    width: MediaQuery.of(context).size.width *
                                        0.018,
                                  ),
                                  Text(
                                    'task2 에 대한 세부계획2',
                                    style: TextStyle(
                                      fontSize:
                                          MediaQuery.of(context).size.width *
                                              0.018,
                                      fontFamily: 'JockeyOne',
                                      fontWeight: FontWeight.w300,
                                    ),
                                  ),
                                  SizedBox(
                                    width: MediaQuery.of(context).size.width *
                                        0.018,
                                  ),
                                  Transform.scale(
                                    scale: MediaQuery.of(context).size.width *
                                        0.0007, // 크기를 조정하기 위해 scale 값을 조정하세요.
                                    child: Checkbox(
                                      value: _isCheckedTask2_2,
                                      onChanged: (newValue) {
                                        setState(() {
                                          _isCheckedTask2_2 =
                                              !_isCheckedTask2_2;
                                        });
                                      },
                                    ),
                                  ),
                                ],
                              )),
                          Container(
                              height: MediaQuery.of(context).size.width *
                                  0.04, // 컨테이너 높이 조정
                              color: Colors.grey[350],
                              child: Row(
                                children: [
                                  SizedBox(
                                    width: MediaQuery.of(context).size.width *
                                        0.018,
                                  ),
                                  Text(
                                    'task2 에 대한 세부계획3',
                                    style: TextStyle(
                                      fontSize:
                                          MediaQuery.of(context).size.width *
                                              0.018,
                                      fontFamily: 'JockeyOne',
                                      fontWeight: FontWeight.w300,
                                    ),
                                  ),
                                  SizedBox(
                                    width: MediaQuery.of(context).size.width *
                                        0.018,
                                  ),
                                  Transform.scale(
                                    scale: MediaQuery.of(context).size.width *
                                        0.0007, // 크기를 조정하기 위해 scale 값을 조정하세요.
                                    child: Checkbox(
                                      value: _isCheckedTask2_3,
                                      onChanged: (newValue) {
                                        setState(() {
                                          _isCheckedTask2_3 =
                                              !_isCheckedTask2_3;
                                        });
                                      },
                                    ),
                                  ),
                                ],
                              )),
                          Container(
                              color: Colors.grey[350],
                              child: Row(
                                children: [
                                  Spacer(),
                                  Text(
                                    '메모장',
                                    textAlign: TextAlign.center,
                                    style: TextStyle(
                                      fontSize:
                                          MediaQuery.of(context).size.width *
                                              0.018,
                                      fontFamily: 'JockeyOne',
                                      fontWeight: FontWeight.w300,
                                    ),
                                  ),
                                  Spacer(),
                                  Transform.scale(
                                    scale: MediaQuery.of(context).size.width *
                                        0.0008, // 크기를 조정하기 위해 scale 값을 조정하세요.
                                    child: IconButton(
                                      onPressed: () {
                                        Provider.of<memoClick>(context,
                                                listen: false)
                                            .toggleView();
                                      },
                                      icon: Icon(Icons.add),
                                    ),
                                  ),
                                  SizedBox(
                                    width: MediaQuery.of(context).size.width *
                                        0.01,
                                  ),
                                ],
                              )),
                        ],
                      ),
// ------------------------- 여기까지 Task2 -----------------------------------

                    // Task3 부분
                    Container(
                      height: MediaQuery.of(context).size.height * 0.125,
                      decoration: BoxDecoration(
                        border: Border.all(
                          color: Colors.black,
                          width: 1.0,
                        ),
                      ),
                      child: Row(
                        children: [
                          SizedBox(
                            width: MediaQuery.of(context).size.width * 0.01,
                          ),
                          Text(
                            'task 3',
                            style: TextStyle(
                              fontSize:
                              MediaQuery.of(context).size.width * 0.023,
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
                          SizedBox(
                            width: MediaQuery.of(context).size.width * 0.033,
                          ),
                          Text(
                            'when',
                            style: TextStyle(
                              fontSize:
                              MediaQuery.of(context).size.width * 0.023,
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
                          SizedBox(
                            width: MediaQuery.of(context).size.width * 0.05,
                          ),

                          //여기서부터 버튼
                          GestureDetector(
                            onTap: () {
                              setState(() {
                                isDropdownOpenTask3 = !isDropdownOpenTask3;
                              });
                            },
                            child: Container(
                              width: MediaQuery.of(context).size.width * 0.023,
                              height: MediaQuery.of(context).size.width * 0.023,
                              decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                color: Colors.grey,
                                border: Border.all(
                                  color: Colors.black,
                                  width: 1.0,
                                ),
                              ),
                              child: Stack(
                                children: [
                                  Align(
                                    alignment: isDropdownOpenTask3
                                        ? Alignment.center
                                        : Alignment.centerLeft,
                                    child: Transform.rotate(
                                      angle: isDropdownOpenTask3
                                          ? 0
                                          : 1.5708, // 90도에 해당하는 라디안 값
                                      child: Icon(
                                        Icons.arrow_drop_down,
                                        size:
                                        MediaQuery.of(context).size.width *
                                            0.023,
                                        color: Colors.black,
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                          //여기까지 버튼
                        ],
                      ),
                    ),
                    if (isDropdownOpenTask3)
                      Column(
                        children: [
                          Container(
                              height: MediaQuery.of(context).size.width *
                                  0.04, // 컨테이너 높이 조정
                              color: Colors.grey[350],
                              child: Row(
                                children: [
                                  SizedBox(
                                    width: MediaQuery.of(context).size.width *
                                        0.018,
                                  ),
                                  Text(
                                    'task3 에 대한 세부계획1',
                                    style: TextStyle(
                                      fontSize:
                                      MediaQuery.of(context).size.width *
                                          0.018,
                                      fontFamily: 'JockeyOne',
                                      fontWeight: FontWeight.w300,
                                    ),
                                  ),
                                  SizedBox(
                                    width: MediaQuery.of(context).size.width *
                                        0.018,
                                  ),
                                  Transform.scale(
                                    scale: MediaQuery.of(context).size.width *
                                        0.0007, // 크기를 조정하기 위해 scale 값을 조정하세요.
                                    child: Checkbox(
                                      value: _isCheckedTask3_1,
                                      onChanged: (newValue) {
                                        setState(() {
                                          _isCheckedTask3_1 =
                                          !_isCheckedTask3_1;
                                        });
                                      },
                                    ),
                                  ),
                                ],
                              )),
                          Container(
                              height: MediaQuery.of(context).size.width *
                                  0.04, // 컨테이너 높이 조정
                              color: Colors.grey[350],
                              child: Row(
                                children: [
                                  SizedBox(
                                    width: MediaQuery.of(context).size.width *
                                        0.018,
                                  ),
                                  Text(
                                    'task3 에 대한 세부계획2',
                                    style: TextStyle(
                                      fontSize:
                                      MediaQuery.of(context).size.width *
                                          0.018,
                                      fontFamily: 'JockeyOne',
                                      fontWeight: FontWeight.w300,
                                    ),
                                  ),
                                  SizedBox(
                                    width: MediaQuery.of(context).size.width *
                                        0.018,
                                  ),
                                  Transform.scale(
                                    scale: MediaQuery.of(context).size.width *
                                        0.0007, // 크기를 조정하기 위해 scale 값을 조정하세요.
                                    child: Checkbox(
                                      value: _isCheckedTask3_2,
                                      onChanged: (newValue) {
                                        setState(() {
                                          _isCheckedTask3_2 =
                                          !_isCheckedTask3_2;
                                        });
                                      },
                                    ),
                                  ),
                                ],
                              )),
                          Container(
                              color: Colors.grey[350],
                              child: Row(
                                children: [
                                  Spacer(),
                                  Text(
                                    '메모장',
                                    textAlign: TextAlign.center,
                                    style: TextStyle(
                                      fontSize:
                                      MediaQuery.of(context).size.width *
                                          0.018,
                                      fontFamily: 'JockeyOne',
                                      fontWeight: FontWeight.w300,
                                    ),
                                  ),
                                  Spacer(),
                                  Transform.scale(
                                    scale: MediaQuery.of(context).size.width *
                                        0.0008, // 크기를 조정하기 위해 scale 값을 조정하세요.
                                    child: IconButton(
                                      onPressed: () {
                                        Provider.of<memoClick>(context,
                                            listen: false)
                                            .toggleView();
                                      },
                                      icon: Icon(Icons.add),
                                    ),
                                  ),
                                  SizedBox(
                                    width: MediaQuery.of(context).size.width *
                                        0.01,
                                  ),
                                ],
                              )),
                        ],
                      ),
// ------------------------- 여기까지 Task3 -----------------------------------

                    // Task4 부분
                    Container(
                      height: MediaQuery.of(context).size.height * 0.125,
                      decoration: BoxDecoration(
                        border: Border.all(
                          color: Colors.black,
                          width: 1.0,
                        ),
                      ),
                      child: Row(
                        children: [
                          SizedBox(
                            width: MediaQuery.of(context).size.width * 0.01,
                          ),
                          Text(
                            'task 4',
                            style: TextStyle(
                              fontSize:
                              MediaQuery.of(context).size.width * 0.023,
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
                          SizedBox(
                            width: MediaQuery.of(context).size.width * 0.033,
                          ),
                          Text(
                            'when',
                            style: TextStyle(
                              fontSize:
                              MediaQuery.of(context).size.width * 0.023,
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
                          SizedBox(
                            width: MediaQuery.of(context).size.width * 0.05,
                          ),

                          //여기서부터 버튼
                          GestureDetector(
                            onTap: () {
                              setState(() {
                                isDropdownOpenTask4 = !isDropdownOpenTask4;
                              });
                            },
                            child: Container(
                              width: MediaQuery.of(context).size.width * 0.023,
                              height: MediaQuery.of(context).size.width * 0.023,
                              decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                color: Colors.grey,
                                border: Border.all(
                                  color: Colors.black,
                                  width: 1.0,
                                ),
                              ),
                              child: Stack(
                                children: [
                                  Align(
                                    alignment: isDropdownOpenTask4
                                        ? Alignment.center
                                        : Alignment.centerLeft,
                                    child: Transform.rotate(
                                      angle: isDropdownOpenTask4
                                          ? 0
                                          : 1.5708, // 90도에 해당하는 라디안 값
                                      child: Icon(
                                        Icons.arrow_drop_down,
                                        size:
                                        MediaQuery.of(context).size.width *
                                            0.023,
                                        color: Colors.black,
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                          //여기까지 버튼
                        ],
                      ),
                    ),
                    if (isDropdownOpenTask4)
                      Column(
                        children: [
                          Container(
                              height: MediaQuery.of(context).size.width *
                                  0.04, // 컨테이너 높이 조정
                              color: Colors.grey[350],
                              child: Row(
                                children: [
                                  SizedBox(
                                    width: MediaQuery.of(context).size.width *
                                        0.018,
                                  ),
                                  Text(
                                    'task2 에 대한 세부계획1',
                                    style: TextStyle(
                                      fontSize:
                                      MediaQuery.of(context).size.width *
                                          0.018,
                                      fontFamily: 'JockeyOne',
                                      fontWeight: FontWeight.w300,
                                    ),
                                  ),
                                  SizedBox(
                                    width: MediaQuery.of(context).size.width *
                                        0.018,
                                  ),
                                  Transform.scale(
                                    scale: MediaQuery.of(context).size.width *
                                        0.0007, // 크기를 조정하기 위해 scale 값을 조정하세요.
                                    child: Checkbox(
                                      value: _isCheckedTask4_1,
                                      onChanged: (newValue) {
                                        setState(() {
                                          _isCheckedTask4_1 =
                                          !_isCheckedTask4_1;
                                        });
                                      },
                                    ),
                                  ),
                                ],
                              )),
                          Container(
                              color: Colors.grey[350],
                              child: Row(
                                children: [
                                  Spacer(),
                                  Text(
                                    '메모장',
                                    textAlign: TextAlign.center,
                                    style: TextStyle(
                                      fontSize:
                                      MediaQuery.of(context).size.width *
                                          0.018,
                                      fontFamily: 'JockeyOne',
                                      fontWeight: FontWeight.w300,
                                    ),
                                  ),
                                  const Spacer(),
                                  Transform.scale(
                                    scale: MediaQuery.of(context).size.width *
                                        0.0008, // 크기를 조정하기 위해 scale 값을 조정하세요.
                                    child: IconButton(
                                      onPressed: () {
                                        Provider.of<memoClick>(context,
                                            listen: false)
                                            .toggleView();
                                      },
                                      icon: Icon(Icons.add),
                                    ),
                                  ),
                                  SizedBox(
                                    width: MediaQuery.of(context).size.width *
                                        0.01,
                                  ),
                                ],
                              )),
                        ],
                      ),
// ------------------------- 여기까지 Task4 -----------------------------------
                  ],
                ),
              ),
            ),
// ------------------------- 여기까지 Task 끝 -----------------------------------
          ],
        ),
      ),
    );
  }
}
