import 'package:flutter/material.dart';
import 'package:admissionproject/nurse/nurse_sidenav.dart';

class NurseResults extends StatelessWidget {
  const NurseResults({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: const NurseNavigationDrawer(),
      appBar: AppBar(
        title: const Text('Medical Results'),
        centerTitle: true,
        backgroundColor: const Color.fromRGBO(239, 58, 37, 1),
      ),
    );
  }
}
