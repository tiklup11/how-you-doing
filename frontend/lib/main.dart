import 'package:flutter/cupertino.dart';
import 'package:frontend/home_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const CupertinoApp(
      theme: CupertinoThemeData(textTheme: CupertinoTextThemeData()),
      debugShowCheckedModeBanner: false,
      home: MyHomePage(),
    );
  }
}
