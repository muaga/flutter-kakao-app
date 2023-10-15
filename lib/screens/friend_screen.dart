import 'package:fltter_kakao_app/components/profile_card.dart';
import 'package:fltter_kakao_app/model/user.dart';
import 'package:flutter/material.dart';

class FriendScreen extends StatelessWidget {
  const FriendScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
          title: Text(
        "친구",
        style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
      )),
      body: Column(
        children: [
          ProfileCard(user: me),
          Divider(),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
            child: Row(
              children: [
                Text("친구"),
                SizedBox(width: 6),
                Text("${friends.length}"),
              ],
            ),
          ),

          /// List를 for문 돌기
          Expanded(
            child: ListView(
              children: List.generate(
                friends.length,
                (index) => ProfileCard(user: friends[index]),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
