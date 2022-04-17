import 'package:flutter/material.dart';
import 'package:admissionproject/applicant/appli_sidenav.dart';

class appli_pdf extends StatelessWidget {
  const appli_pdf({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: const AppliNavigationDrawer(),
      appBar: AppBar(
        title: const Text('Print PDF'),
        centerTitle: true,
        backgroundColor: Color(0xFFEF3A25),
      ),
    );
  }
}
