import 'package:chatroom/class/member.dart';
import 'package:flutter/material.dart';

class FriendPage extends StatelessWidget {
  List<Member> friends;
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text("friend"),
      // child: ListView.builder(itemCount: friends.length == null ? 0 : friends.length
      //     ,itemBuilder: ())
    );
  }
}