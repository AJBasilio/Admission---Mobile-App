import 'package:flutter/material.dart';
import 'package:admissionproject/nurse/nurse_sidenav.dart';

class nurse_message extends StatelessWidget {
  const nurse_message({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: const NurseNavigationDrawer(),
      appBar: AppBar(
        title: const Text('Message'),
        centerTitle: true,
        backgroundColor: Color(0xFFEF3A25),
      ),
    );
  }
}
