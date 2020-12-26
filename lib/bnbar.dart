import 'package:chatroom/Page/chatroom.dart';
import 'package:chatroom/Page/friend.dart';
import 'package:chatroom/Page/setting.dart';
import 'package:flutter/material.dart';

class BnbarPage extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BottomNavigationController());
      // This trailing comma makes auto-formatting nicer for build methods
  }
}
class BottomNavigationController extends StatefulWidget {
  BottomNavigationController({Key key}) : super(key: key);

  @override
  _BottomNavigationControllerState createState() =>
      _BottomNavigationControllerState();
}

class _BottomNavigationControllerState
    extends State<BottomNavigationController> {
  //目前選擇頁索引值
  int _currentIndex = 0; //預設值
  final pages = [FriendPage(), ChatroomPage(), SettingPage()];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('chat'),
        automaticallyImplyLeading: false,
      ),
      body: pages[_currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        items: <BottomNavigationBarItem>[
          BottomNavigationBarItem(icon: Icon(Icons.home), title: Text('朋友')),
          BottomNavigationBarItem(icon: Icon(Icons.chat), title: Text('聊天室')),
          BottomNavigationBarItem(icon: Icon(Icons.account_circle), title: Text('個人資料')),
        ],
        currentIndex: _currentIndex, //目前選擇頁索引值
        fixedColor: Colors.amber, //選擇頁顏色
        onTap: _onItemClick, //BottomNavigationBar 按下處理事件
      ),
    );
  }

  //BottomNavigationBar 按下處理事件，更新設定當下索引值
  void _onItemClick(int index) {
    setState(() {
      _currentIndex = index;
    });
  }
}

