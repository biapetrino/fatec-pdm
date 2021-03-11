import 'package:flutter/material.dart';
import 'package:jokenpo/ui/jogo.page.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Jokenpo',
      theme: ThemeData(
        primaryColor: Colors.black,
      ),
      home: Jogopage(),
    );
  }
}
