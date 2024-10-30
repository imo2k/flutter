import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: '08 네비게이션 이해하기',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      //home: FirstPage(),
      initialRoute: '/', //최초 앱 실행 시 보여줄 경로
      routes: {
        '/' : (context) => FirstPage(),
        '/second' : (context) => SecondPage()
      }
    );
  }
}

class FirstPage extends StatefulWidget {


  @override
  State<StatefulWidget> createState() => _FirstPage();
}

class _FirstPage extends State<FirstPage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text('Sub Page Main'),
      ),
      body: Container(
        child: Center(
          child: Text('첫 번째 페이지')
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          //Navigator.of(context).push(MaterialPageRoute(builder: (context) => SecondPage())); // Floating버튼 누르면 스택에 SecondPage를 쌓음
          Navigator.of(context).pushNamed('/second');
        },
        child: const Icon(Icons.add),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}

class SecondPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Second Page'),
        backgroundColor: Colors.green,
      ),
      body: Container(
        child: Center(
          child: ElevatedButton(onPressed: () {
            Navigator.of(context).pop(); // 현재 페이지 종료(스택에서 삭제)
          },
              child: Text('돌아가기')),
        ),
      ),
    );
  }
}