import 'package:flutter/material.dart';
import 'package:admissionproject/applicant/appli_sidenav.dart';

class AppliMessage extends StatefulWidget {
  const AppliMessage({Key? key}) : super(key: key);

  @override
  State<AppliMessage> createState() => _AppliMessageState();
}

class _AppliMessageState extends State<AppliMessage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: const AppliNavigationDrawer(),
      appBar: AppBar(
        title: const Text('Message'),
        centerTitle: true,
        backgroundColor: const Color(0xFFEF3A25),
      ),
    );
  }
}
