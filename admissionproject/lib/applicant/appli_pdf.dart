import 'package:flutter/material.dart';
import 'package:admissionproject/applicant/appli_sidenav.dart';

class AppliPdf extends StatefulWidget {
  const AppliPdf({Key? key}) : super(key: key);

  @override
  State<AppliPdf> createState() => _AppliPdfState();
}

class _AppliPdfState extends State<AppliPdf> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: const AppliNavigationDrawer(),
      appBar: AppBar(
        title: const Text('Print PDF'),
        centerTitle: true,
        backgroundColor: const Color(0xFFEF3A25),
      ),
      body: ListView(padding: EdgeInsets.all(13), children: <Widget>[
        Card(
          shadowColor: const Color(0xFFEF3A25),
          elevation: 12,
          clipBehavior: Clip.antiAlias,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(20),
          ),
          child: Container(
            padding: EdgeInsets.fromLTRB(4, 16, 4, 16),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                ListTile(
                  leading: Icon(
                    Icons.picture_as_pdf,
                    color: const Color(0xFFEF3A25),
                    size: 50,
                  ),
                  title: const Text(
                    'PRE-ADMISSION CHECKLIST',
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 21,
                      fontWeight: FontWeight.bold,
                      letterSpacing: 1.5,
                    ),
                  ),
                ),
                Divider(
                    height: 25.0, thickness: 1, color: const Color(0xFFEF3A25)),
                Padding(
                  padding: EdgeInsets.fromLTRB(30, 10, 2, 10),
                  child: ButtonBar(
                    alignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      TextButton(
                          style: TextButton.styleFrom(
                            textStyle: const TextStyle(fontSize: 20),
                          ),
                          onPressed: () {},
                          child: Row(
                            children: [
                              const Icon(Icons.file_download),
                              SizedBox(
                                width: 15,
                              ),
                              const Text('Click Here to Download PDF'),
                            ],
                          )),
                    ],
                  ),
                )
              ],
            ),
          ),
        )
      ]),
    );
  }
}
