import 'package:flutter/material.dart';

class AdminExamsched extends StatelessWidget {
  const AdminExamsched({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Applicant Exam Schedule'),
        centerTitle: true,
        backgroundColor: const Color(0xFFEF3A25),
      ),
    );
  }
}
