void main() {
  checkVersion();
  print("End Process");
}

// Future 클래스에 저장하고 대기
Future checkVersion() async { // 비동기
  var version = await lookUpVersion(); // lookUpVersion() 메서드 호출 시까지 대기
  // 호출한 main() 함수로 가서 나머지 일 처리를 한 후에 나머지 일 처리.
  print(version);
}

int lookUpVersion() {
  return 12;
}