import 'package:fltter_kakao_app/components/bottom_icon_button.dart';
import 'package:fltter_kakao_app/components/round_icon_button.dart';
import 'package:fltter_kakao_app/model/user.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class ProfileScreen extends StatelessWidget {
  final User user;

  const ProfileScreen({super.key, required this.user});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        image: DecorationImage(
            image: NetworkImage(user.backgroundImage),
            fit: BoxFit.fitHeight), // 사진 높이 기준 가로 자르기
      ),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          leading: IconButton(
            onPressed: () {
              Navigator.pop(context);
            },
            icon: Icon(Icons.close, size: 30),
          ),
          actions: [
            RoundIconButton(icon: FontAwesomeIcons.gift),
            SizedBox(width: 15),
            RoundIconButton(icon: Icons.settings),
            SizedBox(width: 20),
          ],
        ),
        body: Column(
          children: [
            Spacer(), // 비교해서 between 할 게 없으니, Spacer로 남은 공간 차지하기

            Container(
              width: 110,
              height: 110,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                image: DecorationImage(
                    image: NetworkImage(user.backgroundImage),
                    fit: BoxFit.cover),
              ),
            ),
            SizedBox(height: 8),
            Text(user.name,
                style: TextStyle(fontSize: 20, color: Colors.white)),
            SizedBox(height: 8),
            Text(user.intro,
                style: TextStyle(fontSize: 15, color: Colors.white),
                maxLines: 1),
            SizedBox(height: 20),

            /// 구분 선
            Divider(color: Colors.white),

            /// 자식에 if 절이 사용가능하고 {} 는 제거해야 한다.
            if (user.name == me.name) _buildMyIcons() else _buildFriendIcons(),
          ],
        ),
      ),
    );
  }

  Widget _buildMyIcons() {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 18),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          BottomIconButton(icon: FontAwesomeIcons.comment, text: "나와의 채팅"),
          SizedBox(width: 50),
          BottomIconButton(icon: FontAwesomeIcons.pen, text: "프로필 편집"),
        ],
      ),
    );
  }

  Widget _buildFriendIcons() {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 18),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          BottomIconButton(icon: FontAwesomeIcons.comment, text: "1:1 채팅"),
          SizedBox(width: 50),
          BottomIconButton(icon: FontAwesomeIcons.phone, text: "통화하기"),
        ],
      ),
    );
  }
}
