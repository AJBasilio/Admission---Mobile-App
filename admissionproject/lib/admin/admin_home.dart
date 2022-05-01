import 'package:admissionproject/dashboard/components/my_fields.dart';
import 'package:admissionproject/main.dart';
import 'package:flutter/material.dart';

import 'package:admissionproject/constants.dart';
import 'package:admissionproject/dashboard/components/header.dart';

import 'package:admissionproject/dashboard/components/OverallDetails.dart';

void main() {
  runApp(MyApp());
}

class AdminHome extends StatefulWidget {
  const AdminHome({Key? key}) : super(key: key);

  @override
  State<AdminHome> createState() => _AdminHomeState();
}

class _AdminHomeState extends State<AdminHome> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SingleChildScrollView(
        padding: const EdgeInsets.all(defaultPadding),
        child: Column(
          children: [
            const Header(),
            const SizedBox(height: defaultPadding),
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Expanded(
                  flex: 5,
                  child: Column(
                    children: const [
                      MyFiles(),
                      SizedBox(height: defaultPadding),
                      StorageDetails(),
                    ],
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
