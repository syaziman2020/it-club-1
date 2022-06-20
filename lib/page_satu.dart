import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:itclub_flutter/page_dua.dart';

class PageSatu extends StatelessWidget {
  const PageSatu({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(),
        body: Column(
          children: [
            Row(
              children: [
                InkWell(
                  onTap: () => Navigator.push(context,
                      MaterialPageRoute(builder: (context) => PageDua())),
                  child: Hero(
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
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
