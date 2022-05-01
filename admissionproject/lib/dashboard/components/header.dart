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
    return MaterialApp(
        home: Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: Image.asset('assets/images/logo.png', height: 50, width: 50),
        centerTitle: true,
        backgroundColor: const Color(0xffEF3A25),
        elevation: 0.0,
      ),

      // children: [
      //     IconButton(
      //       onPressed: () {
      //         Navigator.push(
      //         context, MaterialPageRoute(builder: (context) => LoginScreen()));
      //       },
      //       icon: const Icon(
      //       Icons.arrow_back_ios,
      //       color: kBlue,
      //         ),
      //       ),
      //     Text(
      //       "Admin Dashboard",
      //       style: Theme.of(context).textTheme.headline5,
      //     ),
      // ],
    ));
  }
}
