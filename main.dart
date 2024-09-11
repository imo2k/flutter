void main() {
  print('Hello World!');
  var name = 'GO';
  //name = 1; // var로 선언된 변수는 자료형 변경 불가 -> 오류 발생

  var dart;  // 이때 dart의 자료형은 Dynamic형(자료형 변경 가능)으로 선언.
  dart = "Hello";
  dart = 1234;
  //dart = true;

  if (dart is String) {
    print(dart.length);
  }

  if (dart is int) {
    if (dart.isEven) {
      print("짝수");
    }
  }
  // null safety는 개발자가 null값을 참조할 수 없도록 하는 것
  // 개발자가 null값을 참조하면 런타임 에러 발생
  String nickname = "Go";
  //nickname = null; // 오류 발생

  //상황에 따라 null값이 필요하면 자료형 뒤에 ?로 붙인다.
  String? nickname2 = "Go";
  nickname2 = null;

  final nickname3 = "Go";
  // nickname3 = 'ggg';

  // API값을 가져와서 저장해야 할 경우
  // 변수를 만들고 값을 나중에 저장하는 방법 -> late
  late final api;

  // print(api); // late로 선언된 상태이기 때문에 값을 저장하기 전에 접근하면 에러 발생(접근하면 안된다는 의미)

  api = '123';
  print(api);

  // const는 컴파일 시간에 값이 있어야 함.
  const api2 = '123';
  // const api3;  // Ex) 사용자에게 값을 받아와야 하는 경우에는 쓰면 안됨.

  // num은 정수 ,실수 일 수도 있는 자료형
  // num은 int , double의 부모 클래스
  int age = 23;
  num x = 12;
  x = 3.14;

  // 변수에 변수 값 저장
  var name2 = "고욱현";
  var age2 = 26;
  var greeting = '안녕하세요. 저는 $name2입니다. 2년 뒤의 나이는 ${age2+2}살입니다';
                                                      // 계산 사용 시 {} 사용
  print(greeting);

  //list
  var five = true;
  var number1 = [1,2,3,4];
  List<int> number2 = [1,2,3,4, if(five) 5];
                              // Collection if는 list를 생성할 때 조건에 따라 element를 추가할 때 편하게 사용이 가능함
                              // 사용자 로그인 상태에 따라 버튼을 추가하고 싶을 때 사용.
  //number1에 숫자 5 추가
  if(five) {
    number1.add(5);
  }
  print(number1);
  print(number2);

  // collection for / add() 메서드 사용하지 않고 간단히 작성 가능
  var youngBoy = ['A', 'B', 'C', 'D'];
  var players = ['E', 'F', 'G',
    for(var player in youngBoy) '⭐️$player'
  ];
  print(players);

  // Map : key, value로 이뤄짐
  var student = {
    'name' : 'go',
    'age' : 26,
    'grade' : 4
  };

  Map<String, Object> student2 = {
    'name' : 'go',
    'age' : 26,
    'grade' : 4
  };

  // Set : 중복된 값 허용X
  var number3 = {1,2,3,4}; // Set<int> number3 = {1,2,3,4};
  number3.add(1);
  number3.add(1);
  number3.add(1);

  print(number3);
}
