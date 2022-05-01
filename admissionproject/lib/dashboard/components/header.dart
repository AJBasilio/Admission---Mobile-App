import 'package:admissionproject/screens/login-screen.dart';
import 'package:admissionproject/widgets/background-image.dart';
import 'package:flutter/material.dart';

import '../../pallete.dart';

class Header extends StatelessWidget {
  const Header({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
          IconButton(
            onPressed: () {
              Navigator.push(
              context, MaterialPageRoute(builder: (context) => LoginScreen()));
            },
            icon: const Icon(
            Icons.arrow_back_ios,
            color: kBlue,
              ),
            ),
          Text(
            "Admin Dashboard",
            style: Theme.of(context).textTheme.headline5,
          ),
      ],
    );
  }
}