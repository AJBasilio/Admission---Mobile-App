import 'package:admissionproject/controllers/MenuController.dart';
import 'package:admissionproject/admin/admin_bottomnav.dart';
import 'package:flutter/material.dart';

import 'components/side_menu.dart';

class MainScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: const SideMenu(),
      body: SafeArea(
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: const [
            Expanded(
              flex: 5,
              child: AdminBottomnav(),
            ),
          ],
        ),
      ),
    );
  }
}
