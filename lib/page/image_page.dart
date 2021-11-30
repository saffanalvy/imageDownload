import 'package:fileupload/api/firebase_api.dart';
import 'package:fileupload/model/firebase_file.dart';
import 'package:flutter/material.dart';

class ImagePage extends StatelessWidget {
  final FirebaseFile file;

  const ImagePage({
    Key? key,
    required this.file,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(file.name),
        centerTitle: true,
      ),
      body: Image.network(
        file.url,
        height: double.infinity,
        fit: BoxFit.cover,
      ),
    );
  }
}
