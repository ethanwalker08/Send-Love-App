import 'package:flutter/material.dart';
import 'package:send_love/components/love_button.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
          colorScheme: ColorScheme.fromSeed(
        brightness: Brightness.light,
        primary: Colors.purple.shade200,
        secondary: const Color.fromRGBO(150, 123, 182, 1),
        seedColor: Colors.purple.shade200,
      ),),
      home: Scaffold(
        appBar: AppBar(
          title: const Text(
            'Send Love',
            style: TextStyle(fontFamily: 'CedarvilleCursive' ),
          ),
          backgroundColor: Colors.purple.shade200,
          centerTitle: true,
        ),
        body: const Center(
          child: Padding(
            padding: EdgeInsets.all(50.0),
            child: LoveButton(),
          ),
        ),
      ),
    );
  }
}
