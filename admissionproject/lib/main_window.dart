import 'package:flutter/material.dart';

void main() => runApp(const MainWindow());

class MainWindow extends StatelessWidget {
  const MainWindow({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Image.asset('assets/images/logo.png', height: 50, width: 50),
          centerTitle: true,
          backgroundColor: const Color(0xffEF3A25),
          ),
        body: Center(
          child: Image.asset('assets/images/img_1.jpg'),
          ),
        ),
      );
  }
}
