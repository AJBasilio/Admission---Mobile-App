import 'dart:io';
import 'package:image_picker/image_picker.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class AppliUpload extends StatefulWidget {
  const AppliUpload({Key? key}) : super(key: key);

  @override
  State<AppliUpload> createState() => _AppliUploadState();
}

class _AppliUploadState extends State<AppliUpload> {
  File? singleImage;

  final multiPicker = ImagePicker();
  List<XFile>? images = [];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: const Text('Upload Documents'),
        centerTitle: true,
        backgroundColor: const Color.fromARGB(255, 195, 29, 57),
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SizedBox(
                height: 5,
              ),
              Text(
                'Upload necessary pictures of documents',
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              SizedBox(
                height: 10,
              ),
              Container(
                height: 1,
                width: double.infinity,
                color: Colors.grey.withOpacity(0.2),
              ),
              SizedBox(
                height: 10,
              ),
              Text('Click below to add photos'),
              SizedBox(
                height: 15,
              ),
              Expanded(
                child: InkWell(
                  onTap: () {
                    getMultiImages();
                  },
                  child: GridView.builder(
                      itemCount: images!.isEmpty ? 1 : images!.length,
                      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                          crossAxisCount: 3),
                      itemBuilder: (context, index) => Container(
                          decoration: BoxDecoration(
                              color: Colors.white,
                              border: Border.all(
                                  color: const Color.fromARGB(255, 195, 29, 57)
                                      .withOpacity(0.5))),
                          child: images!.isEmpty
                              ? Icon(
                                  CupertinoIcons.camera,
                                  color: const Color.fromARGB(255, 195, 29, 57)
                                      .withOpacity(0.5),
                                )
                              : Image.file(
                                  File(images![index].path),
                                  fit: BoxFit.cover,
                                ))),
                ),
              ),
              const SizedBox(height: 10),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  MaterialButton(
                    padding: EdgeInsets.fromLTRB(0, 0, 0, 0),
                    color: Color.fromARGB(255, 195, 29, 57),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          "Submit",
                          style: TextStyle(color: Colors.white, fontSize: 15),
                        ),
                      ],
                    ),
                    onPressed: () {},
                  )
                ],
              )
            ],
          ),
        ),
      ),
    );
  }

  Future getMultiImages() async {
    final List<XFile>? selectedImages = await multiPicker.pickMultiImage();
    setState(() {
      if (selectedImages!.isNotEmpty) {
        images!.addAll(selectedImages);
      } else {
        print('No Images Selected ');
      }
    });
  }
}
