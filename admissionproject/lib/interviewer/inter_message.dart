import 'package:flutter/material.dart';
import 'package:admissionproject/interviewer/inter_sidenav.dart';

class InterMessage extends StatelessWidget {
  const InterMessage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: const InterNavigationDrawer(),
      appBar: AppBar(
        title: const Text('Message'),
        centerTitle: true,
        backgroundColor: const Color(0xFFEF3A25),
      ),
    );
  }
}
