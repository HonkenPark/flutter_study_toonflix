import 'package:flutter/material.dart';

// 수동생성 시,  1) 클래스 생성 (StatelessWidget으로)
class CurrencyCard extends StatelessWidget {
  // 4) 커스터마이징 될 요소 정의
  final String name, code, amount;
  final double offsetY;
  final IconData icon;
  final bool isInverted;

  final _blackColor = const Color(0xFF1F2123); // private하게 사용하겠다.

  // 5) Code Action (final 필드에 대한 생성자 추가) -> 이후 하드코딩된 부분 변수로 교체
  const CurrencyCard({
    super.key,
    required this.name,
    required this.code,
    required this.amount,
    required this.icon, // 마지막에 , 붙여서 Formatting 유지
    required this.isInverted,
    required this.offsetY,
  });

  // 2) build 메소드 생성
  @override
  Widget build(BuildContext context) {
    // 3) 이전에 만들었던 카드 컨테이너를 return 하도록 붙여넣기
    return Transform.translate(
      offset: Offset(0, offsetY),
      child: Container(
        clipBehavior: Clip.hardEdge, // Container를 넘치게 하지 않고 넘는 부분을 잘라버리는 옵션
        decoration: BoxDecoration(
          color: isInverted ? Colors.white : _blackColor,
          borderRadius: BorderRadius.circular(25),
        ),
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 30, horizontal: 30),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    name,
                    style: TextStyle(
                      color: isInverted ? _blackColor : Colors.white,
                      fontSize: 32,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  const SizedBox(height: 10),
                  Row(
                    children: [
                      Text(
                        amount,
                        style: TextStyle(
                          color: isInverted ? _blackColor : Colors.white,
                          fontSize: 20,
                        ),
                      ),
                      const SizedBox(
                        width: 10,
                      ),
                      Text(
                        code,
                        style: TextStyle(
                          color: isInverted
                              ? _blackColor
                              : Colors.white.withOpacity(0.8),
                          fontSize: 20,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
              Transform.scale(
                scale: 2.2, // 2.2배 (부모에 영향을 미치지 않음)
                child: Transform.translate(
                  offset: const Offset(-5, 12), // 아이콘을 어디 위치시킬 것인지 정의
                  child: Icon(
                    icon,
                    color: isInverted ? _blackColor : Colors.white,
                    size: 88,
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
