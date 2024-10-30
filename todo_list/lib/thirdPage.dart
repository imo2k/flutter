import 'package:flutter/material.dart';

class ThirdPage extends StatelessWidget {
  const ThirdPage({super.key});

  @override
  Widget build(BuildContext context) {

    final String args = ModalRoute.of(context)!.settings.arguments.toString();

    return Scaffold(
      appBar: AppBar(
        title: Text('상세 내용 페이지'),
        backgroundColor: Colors.pinkAccent,
      ),
      body: Container(
        child: Center(
          child: Text(args, style: TextStyle(fontSize: 20),),
        ),
      ),
    );
  }
}