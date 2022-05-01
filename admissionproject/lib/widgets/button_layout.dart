import 'package:admissionproject/main/components/main_screen.dart';
import 'package:flutter/material.dart';
import '../pallete.dart';

class ButtonLayout extends StatelessWidget {
  const ButtonLayout({
    Key? key,
    required this.buttonName,
  }) : super(key: key);

  final String buttonName;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      height: size.height * 0.08,
      width: size.width * 0.25,
      decoration: const BoxDecoration(
        color: Colors.white,
      ),
      child: TextButton(
        style: ButtonStyle(
        shape: MaterialStateProperty.all<RoundedRectangleBorder>( RoundedRectangleBorder( 
        borderRadius: BorderRadius.circular(7), side: const BorderSide(color: Colors.black))), 
        overlayColor: MaterialStateProperty.resolveWith<Color?>(
        (Set<MaterialState> states) {
        if (states.contains(MaterialState.hovered)) {
          return const Color(0xFFEF3A25);
        }
        return null;
        }),
        ),
        onPressed: () {
          Navigator.push(
              context, MaterialPageRoute(builder: (context) => MainScreen()));
        },
        child: Text(
          buttonName,
          style: const TextStyle(
              fontSize: 22,
              color: Colors.black,
              height: 1.5),
        ),
      ),
    );
  }
}
