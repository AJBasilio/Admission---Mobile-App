import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'dart:io';
import 'package:image_picker/image_picker.dart';

class AppliUpload extends StatefulWidget {
  const AppliUpload({Key? key}) : super(key: key);

  @override
  State<AppliUpload> createState() => _AppliUploadState();
}

class _AppliUploadState extends State<AppliUpload> {
  File? image;

  Future getImage(ImageSource source) async {
    try {
      final image = await ImagePicker().pickImage(source: source);
      if (image == null) return;

      final imageTemporary = File(image.path);
      setState(() {
        this.image = imageTemporary;
      });
    } on PlatformException catch (e) {
      print('Failed to pick image: $e');
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Upload Documents'),
          centerTitle: true,
          backgroundColor: const Color.fromARGB(255, 195, 29, 57),
        ),
        body: SingleChildScrollView(
          padding: EdgeInsets.fromLTRB(20, 15, 20, 20),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'Upload Scanned Grades',
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                  ),
                ],
              ),
              SizedBox(
                height: 10,
              ),
              Card(
                color: Color.fromARGB(255, 226, 225, 225),
                elevation: 5,
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      image != null
                          ? Image.file(image!, fit: BoxFit.cover)
                          : Icon(
                              Icons.cloud_upload_outlined,
                              color: Color.fromARGB(255, 97, 95, 96),
                              size: 220,
                            ),
                      SizedBox(
                        height: 20,
                      ),
                      Padding(
                        padding: const EdgeInsets.fromLTRB(10, 8, 10, 28),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            MaterialButton(
                              padding: EdgeInsets.all(20),
                              color: Color.fromARGB(255, 255, 255, 255),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Icon(
                                    Icons.collections,
                                    color: Color.fromARGB(255, 0, 0, 0),
                                    size: 30,
                                  ),
                                  SizedBox(width: 10),
                                  Text(
                                    "Gallery",
                                    style: TextStyle(
                                        fontSize: 20,
                                        color: Color.fromARGB(255, 0, 0, 0)),
                                  ),
                                ],
                              ),
                              onPressed: () {
                                getImage(ImageSource.gallery);
                              },
                            ),
                            SizedBox(width: 40),
                            MaterialButton(
                              padding: EdgeInsets.all(20),
                              color: Color.fromARGB(255, 255, 255, 255),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Icon(
                                    Icons.add_a_photo,
                                    color: Color.fromARGB(255, 0, 0, 0),
                                    size: 30,
                                  ),
                                  SizedBox(width: 10),
                                  Text(
                                    "Camera",
                                    style: TextStyle(
                                        color: Color.fromARGB(255, 0, 0, 0),
                                        fontSize: 20),
                                  ),
                                ],
                              ),
                              onPressed: () {
                                getImage(ImageSource.camera);
                              },
                            ),
                          ],
                        ),
                      )
                    ]),
              ),
              SizedBox(height: 3),
              MaterialButton(
                padding: EdgeInsets.fromLTRB(30, 20, 30, 20),
                color: Color(0xFFEF3A25),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "SUBMIT",
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 20,
                          color: Colors.white),
                    ),
                  ],
                ),
                onPressed: () {
                  "";
                },
              ),
            ],
          ),
        ));
  }
}
