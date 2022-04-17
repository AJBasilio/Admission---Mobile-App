import 'package:flutter/material.dart';
import 'package:admissionproject/interviewer/inter_sidenav.dart';

class inter_results extends StatelessWidget {
  const inter_results({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: const InterNavigationDrawer(),
      appBar: AppBar(
        title: const Text('Interview Results'),
        centerTitle: true,
        backgroundColor: Color(0xFFEF3A25),
      ),
    );
  }
}
