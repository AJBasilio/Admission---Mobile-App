import 'package:flutter/material.dart';
import 'package:admissionproject/applicant/appli_sidenav.dart';

class appli_results extends StatelessWidget {
  const appli_results({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: const AppliNavigationDrawer(),
      appBar: AppBar(
        title: const Text('Application Results'),
        centerTitle: true,
        backgroundColor: Color(0xFFEF3A25),
      ),
    );
  }
}
