import 'package:admissionproject/constants.dart';
import 'package:flutter/material.dart';

class CloudStorageInfo {
  final String? svgSrc, title, numOfFiles;
  final int? totalStorage, percentage;
  final Color? color;

  CloudStorageInfo({
    this.svgSrc,
    this.title,
    this.totalStorage,
    this.numOfFiles,
    this.percentage,
    this.color,
  });
}

List demoMyFiles = [
  CloudStorageInfo(
    title: "Passed Status",
    numOfFiles: "",
    svgSrc: "assets/icons/google_drive.svg",
    totalStorage: 1328,
    color: primaryColor,
    percentage: 35,
  ),
  CloudStorageInfo(
    title: "Ongoing Status",
    numOfFiles: "",
    svgSrc: "assets/icons/pdf_file.svg",
    totalStorage: 1328,
    color: const Color(0xFFFFA113),
    percentage: 35,
  ),
  CloudStorageInfo(
    title: "Failed Status",
    numOfFiles: "",
    svgSrc: "assets/icons/one_drive.svg",
    totalStorage: 1328,
    color: const Color(0xFFA4CDFF),
    percentage: 10,
  ),
  CloudStorageInfo(
    title: "Total Number of Applicants",
    numOfFiles: "",
    svgSrc: "assets/icons/drop_box.svg",
    totalStorage: 1328,
    color: const Color(0xFF007EE5),
    percentage: 78,
  ),
];
