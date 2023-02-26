import 'package:flutter/material.dart';

import 'ui/home.dart';
import 'utils/screen/screen_utils.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(),
      home: MyAppChild(),
    );
  }
}

class MyAppChild extends StatelessWidget {
  const MyAppChild({super.key});

  @override
  Widget build(BuildContext context) {
    ScreenUtil.instance = ScreenUtil.getInstance()..init(context);
    return HomePage();
  }
}
