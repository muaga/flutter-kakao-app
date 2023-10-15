import 'package:fltter_kakao_app/screens/chat_screen.dart';
import 'package:fltter_kakao_app/screens/friend_screen.dart';
import 'package:fltter_kakao_app/screens/more_screen.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({super.key});

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  int _selectedIndex = 0; // 제일 첫 화면

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: IndexedStack(
        /// childern에 존재하는 배열의 index 번호에 따라 화면에 출력된다.
        index: _selectedIndex,
        children: [
          FriendScreen(),
          ChatScreen(),
          MoreScreen(),
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        /// bottonNavigationBar를 눌리면, 해당 currentIndex가 value 값으로 들어간다.
        currentIndex: _selectedIndex,
        onTap: (index) {
          print("선택된 bottom id : ${index}");
          setState(() {
            _selectedIndex = index;
          });
        },

        showSelectedLabels: false,
        showUnselectedLabels: false,

        selectedItemColor: Colors.black,
        unselectedItemColor: Colors.black54,

        items: [
          BottomNavigationBarItem(icon: Icon(FontAwesomeIcons.user), label: ""),
          BottomNavigationBarItem(
              icon: Icon(FontAwesomeIcons.comment), label: ""),
          BottomNavigationBarItem(
              icon: Icon(FontAwesomeIcons.ellipsis), label: ""),
        ],
      ),
    );
  }
}
