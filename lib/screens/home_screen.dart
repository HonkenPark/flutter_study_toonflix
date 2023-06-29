import 'package:flutter/material.dart';

const backend_url = 'https://webtoon-crawler.nomadcoders.workers.dev/';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        centerTitle: true,
        title: const Text(
          '오늘의 웹툰',
          style: TextStyle(
            fontSize: 22,
            fontWeight: FontWeight.w400,
          ),
        ),
        backgroundColor: Colors.white,
        foregroundColor: Colors.green,
        elevation: 10,
      ),
    );
  }
}
