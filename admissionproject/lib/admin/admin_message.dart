import 'package:flutter/material.dart';
import 'package:admissionproject/admin/admin_sidenav.dart';

class admin_message extends StatelessWidget {
  const admin_message({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: const AdminNavigationDrawer(),
      appBar: AppBar(
        title: const Text('Message'),
        centerTitle: true,
        backgroundColor: Color(0xFFEF3A25),
      ),
    );
  }
}
