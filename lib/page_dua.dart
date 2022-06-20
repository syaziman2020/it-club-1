import 'package:flutter/material.dart';

class PageDua extends StatefulWidget {
  const PageDua({Key? key}) : super(key: key);

  @override
  State<PageDua> createState() => _PageDuaState();
}

class _PageDuaState extends State<PageDua> {
  int angka = 1;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('DETAILS'),
      ),
      body: Column(children: [
        Hero(tag: 'details', child: Image.asset('assets/pp.jpg')),
        Padding(
          padding: const EdgeInsets.all(14.0),
          child: Text(
            'Yes, You can use border inf Flutter circle avatar in your application. It might give a nice representation of your users profile image.',
            style: TextStyle(fontSize: 24),
          ),
        ),
        ElevatedButton(
            onPressed: () {
              setState(() {
                angka++;
              });
            },
            child: Text('+++')),
        Text(
          "${angka}",
          style: TextStyle(fontSize: 33),
        )
      ]),
    );
  }
}
