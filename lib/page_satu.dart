import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:itclub_flutter/bot_nav_bar.dart';
import 'package:itclub_flutter/page_dua.dart';
import 'package:itclub_flutter/theme.dart';

class PageSatu extends StatefulWidget {
  PageSatu({Key? key}) : super(key: key);

  @override
  State<PageSatu> createState() => _PageSatuState();
}

class _PageSatuState extends State<PageSatu> {
  TextEditingController textController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(),
        body: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
              Row(
                children: [
                  InkWell(
                    onTap: () => Navigator.push(context,
                        MaterialPageRoute(builder: (context) => BotNavBar())),
                    child: const Hero(
                      tag: 'details',
                      child: CircleAvatar(
                        maxRadius: 50,
                        backgroundImage: AssetImage(
                          'assets/pp.jpg',
                        ),
                      ),
                    ),
                  ),
                  Text(
                    'Nama saya tes',
                    style: TextStyle(fontSize: 30),
                  ),
                ],
              ),
              SizedBox(
                height: 20,
              ),
              TextField(
                  style: TextStyle(fontSize: 24),
                  controller: textController,
                  decoration: InputDecoration(
                      contentPadding: EdgeInsets.all(40),
                      enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(width: 3),
                          borderRadius: BorderRadius.circular(20.0)),
                      focusedBorder: focusedBorderStyle,
                      hoverColor: Colors.green,
                      hintText: 'Password',
                      hintStyle: TextStyle(fontSize: 24),
                      label: Text('LABEL'),
                      suffixIcon: Icon(
                        Icons.lock_outline,
                        color: Colors.blue,
                      ))),
              SizedBox(
                height: 20,
              ),
              TextField(
                decoration: InputDecoration(
                    disabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(20),
                        borderSide: BorderSide(width: 2, color: Colors.grey))),
                enabled: false,
              )
            ],
          ),
        ),
      ),
    );
  }
}
