import 'package:flutter/material.dart';
import 'package:admissionproject/admin/admin_sidenav.dart';
import 'package:admissionproject/admin/admin_chatpage.dart';

void main() => runApp(const AdminMessage());

class AdminMessage extends StatelessWidget {
  const AdminMessage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        drawer: const AdminNavigationDrawer(),
        appBar: AppBar(
          title: const Text('Message'),
          centerTitle: true,
          backgroundColor: Colors.red,
        ),
        body: const ChatPage(),
        bottomNavigationBar: BottomNavigationBar(
            selectedItemColor: Colors.red,
            unselectedItemColor: Colors.grey.shade600,
            selectedLabelStyle: const TextStyle(fontWeight: FontWeight.w600),
            unselectedLabelStyle: const TextStyle(fontWeight: FontWeight.w600),
            type: BottomNavigationBarType.fixed,
            items: const <BottomNavigationBarItem>[
              BottomNavigationBarItem(
                icon: Icon(Icons.message),
                label: 'Chats',
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.group_work),
                label: 'Groups',
              ),
              BottomNavigationBarItem(
                  icon: Icon(Icons.account_box), label: 'Profile'),
            ]),
      ),
    );
  }
}
