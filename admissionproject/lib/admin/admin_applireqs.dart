import 'package:flutter/material.dart';
import 'package:admissionproject/admin/admin_sidenav.dart';

class admin_applireqs extends StatelessWidget {
  const admin_applireqs({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: const AdminNavigationDrawer(),
      appBar: AppBar(
        title: const Text('Applicant Requirements'),
        centerTitle: true,
        backgroundColor: Color(0xFFEF3A25),
      ),
    );
  }
}
