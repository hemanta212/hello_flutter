import 'dart:async';

Future<void> main() async{
  print("started");
  print(await getStr());
  print("ended");
}

Future<String> getStr() async {
  String raju = await combineString('hi', 'hello');
  return raju;
}

Future<String> combineString(String first, String second) {
   return Future.delayed(Duration(seconds: 4), () => '$first $second');
}
