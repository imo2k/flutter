import 'package:flutter/material.dart';

class SecondDetail extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _SecondDetail();
}

class _SecondDetail extends State<SecondDetail> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Second Page'),
        backgroundColor: Colors.lightGreenAccent,
      ),
      body: Container(
        child: Center(
          child: ElevatedButton(
            onPressed: () {
              Navigator.of(context).pushReplacementNamed('/third');
            },
            child: Text('첫 번재 페이지로 이동하기'),
          ),
        ),
      ),
    );
  }
}