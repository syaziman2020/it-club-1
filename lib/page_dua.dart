import 'package:flutter/material.dart';

class PageDua extends StatefulWidget {
  PageDua({
    Key? key,
    required this.textController,
  }) : super(key: key);
  String textController;

  @override
  State<PageDua> createState() => _PageDuaState();
}

class _PageDuaState extends State<PageDua> {
  int angka = 1;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(children: [
        Hero(tag: 'details', child: Image.asset('assets/pp.jpg')),
        Padding(
          padding: const EdgeInsets.all(14.0),
          child: Text(
            'Yes, You can use border inf Flutter circle avatar in your application. It might give a nice representation of your users profile image.',
            style: TextStyle(fontSize: 24),
          ),
        ),
        TextButton(
          child: Text('aaaaaaaaaa'),
          onPressed: (() {}),
        ),
        OutlinedButton(onPressed: (() {}), child: Text('outlined button')),
        SizedBox(
          height: 100,
          width: 100,
          child: ElevatedButton(
              style: ElevatedButton.styleFrom(
                  elevation: 20, shadowColor: Colors.green),
              onPressed: () {
                print(widget.textController);
                setState(() {
                  angka++;
                });
              },
              child: Text('+++')),
        ),
        Text(
          "${angka}",
          style: TextStyle(fontSize: 33),
        )
      ]),
    );
  }
}
