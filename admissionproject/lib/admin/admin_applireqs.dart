import 'package:admissionproject/main.dart';
import 'package:flutter/material.dart';

import 'package:admissionproject/constants.dart';
import 'package:admissionproject/dashboard/components/header.dart';

import '../dashboard/components/TableLayout.dart';

void main() {
  runApp(MyApp());
}

class DashboardScreen extends StatelessWidget {
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
                      SizedBox(height: defaultPadding),
                      RecentFiles(),
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
