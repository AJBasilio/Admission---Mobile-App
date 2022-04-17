import 'package:flutter/material.dart';
import 'package:admissionproject/nurse/nurse_sidenav.dart';

class nurse_results extends StatelessWidget {
  const nurse_results({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: const NurseNavigationDrawer(),
      appBar: AppBar(
        title: const Text('Medical Results'),
        centerTitle: true,
        backgroundColor: Color.fromRGBO(239, 58, 37, 1),
      ),
    );
  }
}
