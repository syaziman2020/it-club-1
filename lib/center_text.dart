import 'package:flutter/material.dart';

class CenterText extends StatelessWidget {
  const CenterText({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        titleSpacing: 10,
        centerTitle: true,
        title: Text('Pertemuan 12'),
        backgroundColor: Color(0xFF37E2D5),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              margin: EdgeInsets.only(bottom: 20),
              height: 100,
              width: 100,
              alignment: Alignment.center,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(50),
                  border: Border.all(width: 10, color: Colors.red),
                  color: Colors.lightBlue),
              child: Text('Teks', style: TextStyle(color: Colors.red)),
            ),
            Container(
              height: 40,
              decoration: BoxDecoration(border: Border.all(width: 2)),
              child: Column(
                children: [
                  Image.asset(
                    'assets/flutter-logo.png',
                    height: 15,
                  ),
                  Text('flutter logo')
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
