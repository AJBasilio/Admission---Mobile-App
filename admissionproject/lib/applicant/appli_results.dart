import 'package:flutter/material.dart';
import 'package:admissionproject/applicant/appli_sidenav.dart';

class AppliResults extends StatefulWidget {
  const AppliResults({Key? key}) : super(key: key);

  @override
  State<AppliResults> createState() => _AppliResultsState();
}

class _AppliResultsState extends State<AppliResults> {
  final Images = [
    'assets/images/exampassers.jpg',
    'assets/images/exampassers2.jpg',
    'assets/images/exampassers3.jpg'
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: const AppliNavigationDrawer(),
      appBar: AppBar(
        title: const Text('Application Results'),
        centerTitle: true,
        backgroundColor: const Color(0xFFEF3A25),
      ),
    );
  }
}
