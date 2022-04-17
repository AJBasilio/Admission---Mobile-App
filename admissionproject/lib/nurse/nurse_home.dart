import 'package:flutter/material.dart';
import 'package:admissionproject/nurse/nurse_sidenav.dart';

void main() {
  runApp(const MaterialApp(
    home: nurse_home(),
  ));
}

class nurse_home extends StatelessWidget {
  const nurse_home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: const NurseNavigationDrawer(),
      appBar: AppBar(
        title: const Text('Nurse Dashboard'),
        centerTitle: true,
        backgroundColor: Color(0xFFEF3A25),
      ),
      // body: Builder(
      //   builder: (context) {
      //     return Center(
      //       child: SizedBox(
      //         height: 50,
      //         width: MediaQuery.of(context).size.width - 100,
      //         child: ElevatedButton.icon(
      //           style: ElevatedButton.styleFrom(
      //             primary: Colors.black,
      //           ),
      //           onPressed: () {
      //             Scaffold.of(context).openDrawer();
      //           },
      //           icon: const Icon(Icons.open_in_new, color: Colors.white),
      //           label: const Text(
      //             'Open Navigation Drawer',
      //             style: TextStyle(color: Colors.white),
      //           ),
      //         ),
      //       ),
      //     );
      //   }
      // )
    );
  }
}