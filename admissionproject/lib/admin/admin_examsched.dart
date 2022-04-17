import 'package:flutter/material.dart';
import 'package:admissionproject/admin/admin_sidenav.dart';

class admin_examsched extends StatelessWidget {
  const admin_examsched({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: const AdminNavigationDrawer(),
      appBar: AppBar(
        title: const Text('Applicant Exam Schedule'),
        centerTitle: true,
        backgroundColor: Color(0xFFEF3A25),
      ),
    );
  }
}
