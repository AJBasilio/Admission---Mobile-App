import 'package:flutter/material.dart';
import 'package:admissionproject/applicant/appli_sidenav.dart';

class AppliUpload extends StatefulWidget {
  const AppliUpload({Key? key}) : super(key: key);

  @override
  State<AppliUpload> createState() => _AppliUploadState();
}

class _AppliUploadState extends State<AppliUpload> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: const AppliNavigationDrawer(),
      appBar: AppBar(
        title: const Text('Upload Documents'),
        centerTitle: true,
        backgroundColor: const Color(0xFFEF3A25),
      ),
    );
  }
}
