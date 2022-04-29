import 'package:flutter/material.dart';
import 'package:admissionproject/interviewer/inter_sidenav.dart';

class InterResults extends StatelessWidget {
  const InterResults({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: const InterNavigationDrawer(),
      appBar: AppBar(
        title: const Text('Interview Results'),
        centerTitle: true,
        backgroundColor: const Color(0xFFEF3A25),
      ),
    );
  }
}
