import 'package:flutter/material.dart';

void main() {
  runApp(MyHomePage());
}



class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 226, 226, 226),
      body: Column(
        // child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            const Flexible(
             child: Center(
                child: CircleAvatar(
                radius: 75,
                    backgroundImage: AssetImage('assets/images/logo.png'),
                    backgroundColor: Color.fromARGB(255, 226, 225, 225),
                  ),
                ),
              ),
            SizedBox(
              width: 200,
              height: 50,
              child: 
              RaisedButton(
                padding: const EdgeInsets.symmetric(vertical: 8, horizontal: 30),
                onPressed: () {
                  print("RaisedButton");
                },
                color: Colors.red,
                shape: const RoundedRectangleBorder(
                    borderRadius: BorderRadius.all(Radius.circular(30))),
                child: const Text(
                  "Login",
                  style: TextStyle(color: Colors.white),
                ),
              ),
            ),
            SizedBox(
              height: 16,
            ),
            SizedBox(
              width: 200,
              height: 50,
              child: RaisedButton(
                padding: EdgeInsets.symmetric(vertical: 8, horizontal: 30),
                onPressed: () {
                  print("RaisedButton");
                },
                color: Colors.red,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.all(Radius.circular(30))),
                child: Text(
                  "Log out",
                  style: TextStyle(color: Colors.white),
                
                ),
              ),
            ),
            SizedBox(
              height: 16,
            ),
            

          ],
        ),
      );
    
  }
}