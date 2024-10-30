import 'package:flutter/material.dart';

class SubDetail extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _SubDetail();
}

class _SubDetail extends State<SubDetail> {

  List<String> todoList = new List.empty(growable: true);

  @override

  void initState() {
    super.initState();
    todoList.add('모바일 수업 듣기');
    todoList.add('이력서 작성하기');
    todoList.add('자소서 작성하기');
    todoList.add('취업 박람회 둘러보기');
  }

  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('오늘 할 일'),
        backgroundColor: Colors.blue,
      ),
      body: ListView.builder(itemBuilder: (context, index) {
        return Card(
          // 카드 사이의 간격
          margin: EdgeInsets.symmetric(vertical: 5.0, horizontal: 5.0),
          shape: RoundedRectangleBorder(
            //카드 모서리 둥글기 조절
            borderRadius: BorderRadius.circular(5.0),
          ),
          child: InkWell(
            child: SizedBox(
              height: 55.0,
              child: Text(
                todoList[index],
                style: TextStyle(fontSize: 20),
              ),
            ),
            onTap: (){
              Navigator.of(context).pushNamed('/third', arguments: todoList[index]);
            },
          ),
        );
      },
      itemCount: todoList.length,
      ),
      floatingActionButton: FloatingActionButton(
          onPressed: () {},
          child: Icon(Icons.add),
      ),
    );
  }
}
