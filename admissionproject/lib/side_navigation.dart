import 'package:flutter/material.dart';
import 'package:admissionproject/sidenav_item.dart';
import 'package:admissionproject/pages/appli_results.dart';
import 'package:admissionproject/pages/appli_pdf.dart';
import 'package:admissionproject/pages/appli_message.dart';
import 'package:admissionproject/main.dart';

class NavigationDrawer extends StatelessWidget {
  const NavigationDrawer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Material(
        color: Color.fromARGB(255, 255, 255, 255),
        child: Padding(
          padding: const EdgeInsets.fromLTRB(24.0, 90, 24, 0),
          child: Column(
            children: [
              headerWidget(),
              const SizedBox(
                height: 40,
              ),
              const Divider(
                thickness: 1,
                height: 10,
                color: Color.fromARGB(255, 151, 151, 151),
              ),
              const SizedBox(
                height: 40,
              ),
              DrawerItem(
                  name: 'View Results',
                  icon: Icons.view_list,
                  onPressed: () => onItemPressed(context, index: 0)),
              const SizedBox(
                height: 30,
              ),
              DrawerItem(
                  name: 'Print PDF',
                  icon: Icons.description,
                  onPressed: () => onItemPressed(context, index: 1)),
              const SizedBox(
                height: 30,
              ),
              DrawerItem(
                  name: 'Message',
                  icon: Icons.message_outlined,
                  onPressed: () => onItemPressed(context, index: 2)),
              const SizedBox(
                height: 30,
              ),
              const Divider(
                thickness: 1,
                height: 10,
                color: Color.fromARGB(255, 151, 151, 151),
              ),
              const SizedBox(
                height: 30,
              ),
              DrawerItem(
                  name: 'Log out',
                  icon: Icons.logout,
                  onPressed: () => onItemPressed(context, index: 3)),
            ],
          ),
        ),
      ),
    );
  }

  void onItemPressed(BuildContext context, {required int index}) {
    Navigator.pop(context);

    switch (index) {
      case 0:
        Navigator.push(context,
            MaterialPageRoute(builder: (context) => const appli_results()));
        break;
      case 1:
        Navigator.push(context,
            MaterialPageRoute(builder: (context) => const appli_pdf()));
        break;
      case 2:
        Navigator.push(context,
            MaterialPageRoute(builder: (context) => const appli_message()));
        break;
      case 3:
        Navigator.push(
            context, MaterialPageRoute(builder: (context) => const MyApp()));
        break;
    }
  }

  Widget headerWidget() {
    return Row(
      children: [
        const CircleAvatar(
          radius: 40,
          backgroundImage: AssetImage('images/logo.png'),
        ),
        const SizedBox(
          width: 20,
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: const [
            Text('Applicant',
                style: TextStyle(
                    fontSize: 16, color: Color.fromARGB(255, 0, 0, 0))),
            SizedBox(
              height: 10,
            ),
            Text('applicant@gmail.com',
                style: TextStyle(
                    fontSize: 16, color: Color.fromARGB(255, 0, 0, 0)))
          ],
        )
      ],
    );
  }
}
