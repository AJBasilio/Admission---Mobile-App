import 'package:flutter/material.dart';

void main() => runApp(const MainWindow());

class MainWindow extends StatelessWidget {
  const MainWindow({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor:  Colors.white,
        appBar: AppBar(
          title: Image.asset('assets/images/logo.png', height: 50, width: 50),
          centerTitle: true,
          backgroundColor: const Color(0xffEF3A25),
          elevation: 0.0,
          ),

        body: Padding(
          padding: const EdgeInsets.all(12.0),
          child: Column(
            children: <Widget> [
             const Text(
                'Technological University of the Philippines - Cavite',
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 16,
                  fontFamily: 'Lato',
                  fontWeight: FontWeight.bold,
                  letterSpacing: 2.0,
                ),
              ),
              const SizedBox(height: 12.0,),
              Image.asset('assets/images/img_1.jpg'),
              buildText(context)
            ]
            ,),
        )
        ),
      );
  }
  Widget buildText(BuildContext context) => const ExpansionTile(
    title: Text(
      'Academics',
      style: TextStyle(
        color: Colors.black,
        fontSize: 16,
        fontFamily: 'Lato',
        fontWeight: FontWeight.bold,
        letterSpacing: 2.0,
      ),
      ),
      children: [
        Text(
          'Department of Industrial Engineering',
          style: TextStyle(
            color: Colors.black,
            fontSize: 14,
            fontFamily: 'Lato',
            letterSpacing: 1.5,
            fontWeight: FontWeight.bold,
          ),
        ),
        Divider(
          height: 10.0,
          color: Colors.blueGrey,
        ),
        Text(
          'History',
          style: TextStyle(
            color: Colors.black,
            fontSize: 12,
            fontFamily: 'Lato',
            fontWeight: FontWeight.bold,
          ),
        ),
        SizedBox(height: 5.0,),
        Text('The College of Industrial Technology traces its roots from the Technical Department of the then Philippine School of Arts and Trades adapted in 1937 which later became the Philippine College of Arts and Trades...',
        style: TextStyle(

        )
        )
      ],
    );

}
