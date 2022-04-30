import 'package:flutter/material.dart';

void main() {
  runApp(const MaterialApp(
    home: AppliHome(),
  ));
}

class AppliHome extends StatefulWidget {
  const AppliHome({Key? key}) : super(key: key);

  @override
  State<AppliHome> createState() => _AppliHomeState();
}

class _AppliHomeState extends State<AppliHome> {
  @override
  Widget build(BuildContext context) => Scaffold(
        appBar: AppBar(
          title: const Text('Applicant Dashboard'),
          centerTitle: true,
          backgroundColor: const Color(0xFFEF3A25),
        ),
        body: ListView(
          padding: const EdgeInsets.all(13),
          children: [
            ApplicantInfo(),
            ExamScore(),
            InterStatus(),
            MedicalStatus(),
            AppliStatus(),
          ],
        ),
      );

  // ignore: non_constant_identifier_names
  Widget ApplicantInfo() => Card(
        shadowColor: const Color(0xFFEF3A25),
        elevation: 3,
        clipBehavior: Clip.antiAlias,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(20),
        ),
        child: Container(
          padding: const EdgeInsets.fromLTRB(4, 16, 4, 16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              ListTile(
                leading: const Icon(
                  Icons.account_circle,
                  color: Color(0xFFEF3A25),
                  size: 50,
                ),
                title: const Text(
                  'WELCOME APPLICANT',
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 21,
                    fontWeight: FontWeight.bold,
                    letterSpacing: 1.5,
                  ),
                ),
                subtitle: Text(
                  "Applicant's Information",
                  style: TextStyle(color: Colors.black.withOpacity(0.7)),
                ),
              ),
              const Divider(
                  height: 25.0, thickness: 1, color: Color(0xFFEF3A25)),
              Padding(
                  padding: const EdgeInsets.fromLTRB(30, 10, 2, 10),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: const [
                      Text('Name : Juan Dela Cruz',
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 18,
                            fontWeight: FontWeight.normal,
                            letterSpacing: 1,
                          )),
                      SizedBox(height: 5),
                      Text('Course (1st Choice) : BSME',
                          textAlign: TextAlign.left,
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 18,
                            fontWeight: FontWeight.normal,
                            letterSpacing: 1,
                          )),
                      SizedBox(height: 5),
                      Text('Sex : Male',
                          textAlign: TextAlign.left,
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 18,
                            fontWeight: FontWeight.normal,
                            letterSpacing: 1,
                          )),
                      SizedBox(height: 5),
                      Text('SHS Strand : STEM',
                          textAlign: TextAlign.left,
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 18,
                            fontWeight: FontWeight.normal,
                            letterSpacing: 1,
                          )),
                      SizedBox(height: 5),
                      Text('Date of Application : June 13, 2022',
                          textAlign: TextAlign.left,
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 18,
                            fontWeight: FontWeight.normal,
                            letterSpacing: 1,
                          )),
                    ],
                  ))
            ],
          ),
        ),
      );

  // ignore: non_constant_identifier_names
  Widget ExamScore() => Card(
        shadowColor: const Color(0xFFEF3A25),
        elevation: 5,
        clipBehavior: Clip.antiAlias,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(20),
        ),
        child: Container(
          padding: const EdgeInsets.fromLTRB(4, 16, 4, 16),
          child: Column(
            children: [
              ListTile(
                leading: const Icon(
                  Icons.check_circle,
                  color: Colors.green,
                  size: 50,
                ),
                title: const Text(
                  'Examination Score',
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 21,
                    fontWeight: FontWeight.bold,
                    letterSpacing: 1.5,
                  ),
                ),
                subtitle: Text(
                  'Percentage',
                  style: TextStyle(color: Colors.black.withOpacity(0.7)),
                ),
              ),
              const Divider(
                  height: 10.0, thickness: 1, color: Color(0xFFEF3A25)),
              Padding(
                padding: const EdgeInsets.all(5.0),
                child: Text(
                  '78%',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Colors.green.withOpacity(1),
                    fontSize: 25,
                    fontWeight: FontWeight.normal,
                    letterSpacing: 1.0,
                  ),
                ),
              ),
            ],
          ),
        ),
      );

  // ignore: non_constant_identifier_names
  Widget InterStatus() => Card(
        shadowColor: const Color(0xFFEF3A25),
        elevation: 5,
        clipBehavior: Clip.antiAlias,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(20),
        ),
        child: Container(
          padding: const EdgeInsets.fromLTRB(4, 16, 4, 16),
          child: Column(
            children: [
              const ListTile(
                leading: Icon(
                  Icons.check_circle,
                  color: Colors.green,
                  size: 50,
                ),
                title: Text(
                  'Interview Status',
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 21,
                    fontWeight: FontWeight.bold,
                    letterSpacing: 1.5,
                  ),
                ),
              ),
              const Divider(
                  height: 10.0, thickness: 1, color: Color(0xFFEF3A25)),
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: Text(
                  'Passed',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Colors.green.withOpacity(1),
                    fontSize: 25,
                    fontWeight: FontWeight.normal,
                    letterSpacing: 1.0,
                  ),
                ),
              ),
            ],
          ),
        ),
      );

  // ignore: non_constant_identifier_names
  Widget MedicalStatus() => Card(
        shadowColor: const Color(0xFFEF3A25),
        elevation: 5,
        clipBehavior: Clip.antiAlias,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(20),
        ),
        child: Container(
          padding: const EdgeInsets.fromLTRB(4, 16, 4, 16),
          child: Column(
            children: [
              const ListTile(
                leading: Icon(
                  Icons.highlight_off,
                  color: Colors.red,
                  size: 50,
                ),
                title: Text(
                  'Medical Status',
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 21,
                    fontWeight: FontWeight.bold,
                    letterSpacing: 1.5,
                  ),
                ),
              ),
              const Divider(
                  height: 10.0, thickness: 1, color: Color(0xFFEF3A25)),
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: Text(
                  'Failed',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Colors.red.withOpacity(1),
                    fontSize: 25,
                    fontWeight: FontWeight.normal,
                    letterSpacing: 1.0,
                  ),
                ),
              ),
            ],
          ),
        ),
      );

  // ignore: non_constant_identifier_names
  Widget AppliStatus() => Card(
        shadowColor: const Color(0xFFEF3A25),
        elevation: 5,
        clipBehavior: Clip.antiAlias,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(20),
        ),
        child: Container(
          padding: const EdgeInsets.fromLTRB(4, 16, 4, 16),
          child: Column(
            children: [
              const ListTile(
                leading: Icon(
                  Icons.help_outline,
                  color: Colors.orange,
                  size: 50,
                ),
                title: Text(
                  'Application Status',
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 21,
                    fontWeight: FontWeight.bold,
                    letterSpacing: 1.5,
                  ),
                ),
              ),
              const Divider(
                  height: 10.0, thickness: 1, color: Color(0xFFEF3A25)),
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: Text(
                  'On Going',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Colors.orange.withOpacity(1),
                    fontSize: 25,
                    fontWeight: FontWeight.normal,
                    letterSpacing: 1.0,
                  ),
                ),
              ),
            ],
          ),
        ),
      );
}
