void main() async {
  // 비동기 함수가 반환하는 값을 처리하기 위해 then() 함수 사용
  // 데이터를 성공적으로 반환하면 호출한 곳에서 then() 함수를 이용해서 처리
  await getVersionName().then((value) => {
    print(value)
  });
  print('End Process.');
}
Future<String> getVersionName() async {
  var versionName = await lookUpVersionName();
  return versionName;
}

String lookUpVersionName() {
  return 'Ardroid Q';
}