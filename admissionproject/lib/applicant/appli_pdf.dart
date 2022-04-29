import 'package:flutter/material.dart';
import 'package:admissionproject/applicant/appli_sidenav.dart';

class AppliPdf extends StatelessWidget {
  const AppliPdf({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: const AppliNavigationDrawer(),
      appBar: AppBar(
        title: const Text('Print PDF'),
        centerTitle: true,
        backgroundColor: const Color(0xFFEF3A25),
      ),
    );
  }
}
