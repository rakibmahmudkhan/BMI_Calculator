import 'package:bmi_by_me/pages/Input_page.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const BMICAlCULATOR());
}

class BMICAlCULATOR extends StatelessWidget {
  const BMICAlCULATOR({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData.dark(),
      home: const InputPage(),
    );
  }
}
