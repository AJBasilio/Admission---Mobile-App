import 'package:flutter/material.dart';
import 'package:admissionproject/sidenav_item.dart';
import 'package:admissionproject/admin/admin_home.dart';
import 'package:admissionproject/admin/admin_examsched.dart';
import 'package:admissionproject/admin/admin_applireqs.dart';
import 'package:admissionproject/admin/admin_message.dart';
import 'package:admissionproject/main.dart';

class AdminNavigationDrawer extends StatelessWidget {
  const AdminNavigationDrawer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Material(
        color: const Color.fromARGB(255, 255, 255, 255),
        child: Padding(
          padding: const EdgeInsets.fromLTRB(24.0, 90, 24, 0),
          child: Column(
            children: [
              //headerWidget(),
              const SizedBox(
                height: 40,
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
                name: 'Home',
                icon: Icons.home,
                onPressed: () => onItemPressed(context, index: 0),
              ),
              const SizedBox(
                height: 30,
              ),
              DrawerItem(
                  name: 'Examination Schedule',
                  icon: Icons.view_list,
                  onPressed: () => onItemPressed(context, index: 1)),
              const SizedBox(
                height: 30,
              ),
              DrawerItem(
                  name: 'Requirements',
                  icon: Icons.description,
                  onPressed: () => onItemPressed(context, index: 2)),
              const SizedBox(
                height: 30,
              ),
              DrawerItem(
                  name: 'Message',
                  icon: Icons.message_outlined,
                  onPressed: () => onItemPressed(context, index: 3)),
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
                  onPressed: () => onItemPressed(context, index: 4)),
            ],
          ),
        ),
      ),
    );
  }

  void onItemPressed(BuildContext context, {required int index}) {
    Navigator.pop(context);

  //   switch (index) {
  //     case 0:
  //       Navigator.push(context,
  //           MaterialPageRoute(builder: (context) => DashboardScreen()));
  //       break;
  //     case 1:
  //       Navigator.push(context,
  //           MaterialPageRoute(builder: (context) => const AdminExamsched()));
  //       break;
  //     case 2:
  //       Navigator.push(context,
  //           MaterialPageRoute(builder: (context) => const AdminApplireqs()));
  //       break;
  //     case 3:
  //       Navigator.push(context,
  //           MaterialPageRoute(builder: (context) => const AdminMessage()));
  //       break;
  //     case 4:
  //       Navigator.push(
  //           context, MaterialPageRoute(builder: (context) => MyApp()));
  //       break;
  //   }
  // }

  Widget headerWidget() {
    return Row(
      children: [
        const CircleAvatar(
          radius: 40,
          backgroundImage: AssetImage('assets/images/logo.png'),
        ),
        const SizedBox(
          width: 20,
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: const [
            Text('Admin',
                style: TextStyle(
                    fontSize: 16, color: Color.fromARGB(255, 0, 0, 0))),
            SizedBox(
              height: 10,
            ),
            Text('Admin@gmail.com',
                style: TextStyle(
                    fontSize: 16, color: Color.fromARGB(255, 0, 0, 0)))
          ],
        )
      ],
    );
  }
}
}