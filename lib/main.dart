import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Player {
  String? name;

  Player();
}

void main() {
  runApp(App());
}

// 위젯을 만들기 위해 3개의 코어 위젯 중 하나를 상속받아야 한다.
class App extends StatelessWidget {
  // StatelessWidget를 만들기 위해서는 build 메소드를 구현해줘야한다.
  // build 메소드는 위젯의 UI를 만든다.
  @override // 이 어노테이션은 부모 클래스에 이미 있는 메소드를 오버라이드 한다는 뜻
  Widget build(BuildContext context) {
    // build에서 return하는 것을 보여준다고 했으니 Widget을 리턴해야함
    return MaterialApp(
      // 화면은 Scaffold를 가져야한다. (모바일 앱은 반드시 필요)
      home: Scaffold(
        backgroundColor: Color(0xFF181818),
        body: Padding(
          padding: EdgeInsets.symmetric(horizontal: 40),
          child: Column(children: [
            SizedBox(
              height: 50,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    Text(
                      'Hey Selena',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 28,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    Text(
                      'Welcome Back',
                      style: TextStyle(
                        color: Colors.white.withOpacity(0.8),
                        fontSize: 18,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ]),
        ),
      ),
    ); // 1) Material 2) Cupertino
  }
}
