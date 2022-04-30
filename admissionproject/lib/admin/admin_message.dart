import 'package:flutter/material.dart';
import 'package:admissionproject/admin/admin_chatpage.dart';

<<<<<<< Updated upstream
void main() => runApp(const AdminMessage());
=======
void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
>>>>>>> Stashed changes

  static const String _title = 'Flutter Code Sample';

  @override
  Widget build(BuildContext context) {
<<<<<<< Updated upstream
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
=======
    return const MaterialApp(
      title: _title,
      home: MyStatefulWidget(),
    );
  }
}

class MyStatefulWidget extends StatefulWidget {
  const MyStatefulWidget({Key? key}) : super(key: key);

  @override
  State<MyStatefulWidget> createState() => _MyStatefulWidgetState();
}

class _MyStatefulWidgetState extends State<MyStatefulWidget> {
  int _selectedIndex = 0;
  static const TextStyle optionStyle =
      TextStyle(fontSize: 30, fontWeight: FontWeight.bold);
  static const List<Widget> _widgetOptions = <Widget>[
    Text(
      'Index 0: Home',
      style: optionStyle,
    ),
    Text(
      'Index 1: Results',
      style: optionStyle,
    ),
    Text(
      'Index 2: Requirements',
      style: optionStyle,
    ),
    Text(
      'Index 3: Message',
      style: optionStyle,
    ),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Messages'),
        centerTitle: true,
        backgroundColor: Colors.red,
      ),
      body: const ChatPage(),
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.view_list),
            label: 'Results',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.archive),
            label: 'Documents',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.message),
            label: 'Messages',
          ),
           
        ],
        currentIndex: _selectedIndex,
        selectedItemColor: Colors.red,
        unselectedItemColor: Colors.grey,
        onTap: _onItemTapped,
>>>>>>> Stashed changes
      ),
    );
  }
}
