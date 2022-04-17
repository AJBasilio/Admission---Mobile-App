import 'package:flutter/material.dart';

class DrawerItem extends StatelessWidget {
  const DrawerItem(
      {Key? key,
      required this.name,
      required this.icon,
      required this.onPressed})
      : super(key: key);

  final String name;
  final IconData icon;
  final Function() onPressed;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onPressed,
      child: SizedBox(
        height: 40,
        child: Row(
          children: [
            Icon(
              icon,
              size: 30,
              color: Color.fromARGB(255, 70, 69, 69),
            ),
            const SizedBox(
              width: 20,
            ),
            Text(
              name,
              style: const TextStyle(
                  fontSize: 17, color: Color.fromARGB(255, 46, 46, 46)),
            )
          ],
        ),
      ),
    );
  }
}
