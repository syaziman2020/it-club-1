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
      body: ListView.separated(
        separatorBuilder: (context, index) => Divider(
          thickness: 10,
          color: Colors.black,
        ),
        itemCount: 10,
        itemBuilder: (context, index) {
          return Container(
            child: Row(
              children: [
                Text(
                  "${index + 1}",
                  style: TextStyle(fontSize: 44),
                ),
                Icon(
                  Icons.abc,
                  size: 100,
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [Text(' Profile saya '), Text('UI UX')],
                )
              ],
            ),
          );
        },
        // scrollDirection: Axis.horizontal,
      ),
    );
  }
}
