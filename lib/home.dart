import 'dart:io';
import 'package:flutter/material.dart';
import 'package:image_cropper/image_cropper.dart';
import 'package:image_picker/image_picker.dart';

class HomeScreen extends StatefulWidget {
  createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  File? _imageFile = null;

  _captureImage() async {
    ImagePicker _picker = ImagePicker();
    XFile? photo = await _picker.pickImage(source: ImageSource.camera);
    setState(() {
      _imageFile = File(photo!.path);
    });
  }

  Future<void> _cropImage() async {
    File? cropped = await ImageCropper.cropImage(
        sourcePath: _imageFile!.path,
        aspectRatio: CropAspectRatio(ratioX: 1, ratioY: 1),
        compressQuality: 100,
        maxWidth: 700,
        maxHeight: 700,
        compressFormat: ImageCompressFormat.jpg,
        androidUiSettings: AndroidUiSettings(showCropGrid: true));
    setState(() {
      _imageFile = cropped ?? _imageFile;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomAppBar(
          child: Row(
        children: <Widget>[
          IconButton(onPressed: _captureImage, icon: Icon(Icons.photo_camera)),
          IconButton(onPressed: _cropImage, icon: Icon(Icons.crop))
        ],
      )),
      body: ListView(
        children: <Widget>[
          if (_imageFile != null) ...[
            Image.file(File(_imageFile!.path)),
            Row(
              children: <Widget>[
                IconButton(onPressed: _cropImage, icon: Icon(Icons.crop))
              ],
            )
          ]
        ],
      ),
    );
  }
}
