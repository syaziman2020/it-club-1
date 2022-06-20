import 'package:flutter/material.dart';
import 'package:itclub_flutter/page_dua.dart';
import 'package:itclub_flutter/theme.dart';

class BotNavBar extends StatefulWidget {
  const BotNavBar({Key? key}) : super(key: key);

  @override
  State<BotNavBar> createState() => _BotNavBarState();
}

class _BotNavBarState extends State<BotNavBar> {
  int _index = 0;
  static TextStyle styleText = TextStyle(fontSize: 44);
  List<Widget> widgetList = [
    Text(
      'tes 1',
      style: styleText,
    ),
    PageDua(textController: 'tes'),
    Text('tes 3'),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Center(
        child: widgetList.elementAt(_index),
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _index,
        selectedItemColor: Colors.blue,
        onTap: (int a) {
          setState(() {
            _index = a;
          });
        },
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.business),
            label: 'Business',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.school),
            label: 'School',
          ),
        ],
      ),
    );
  }
}
