import 'dart:io';
import 'package:detect/ingredients.dart';
import 'package:detect/models/text_model.dart';
import 'package:flutter/material.dart';
import 'package:image_cropper/image_cropper.dart';
import 'package:image_picker/image_picker.dart';
import 'package:detect/ml-kit/google_ml_kit.dart';

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

    if (_imageFile != null) {
      _cropImage();
    }
  }

  Future<void> _cropImage() async {
    File? cropped = await ImageCropper.cropImage(
        sourcePath: _imageFile!.path,
        // aspectRatio: CropAspectRatio(ratioX: 1, ratioY: 1),
        compressQuality: 100,
        compressFormat: ImageCompressFormat.jpg,
        androidUiSettings: AndroidUiSettings(
            hideBottomControls: true, lockAspectRatio: false));
    setState(() {
      _imageFile = cropped ?? _imageFile;
    });

    extract(_imageFile!.path);
  }

  extract(String path) async {
    List<RecognizedText> text = await getText(path);
    Navigator.of(context).push(MaterialPageRoute(
        builder: (BuildContext context) =>
            IngredientScreen(extractedText: text)));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomAppBar(
          child: Row(
        children: <Widget>[
          IconButton(onPressed: _captureImage, icon: Icon(Icons.photo_camera)),
        ],
      )),
      body: ListView(
        children: <Widget>[
          if (_imageFile != null) ...[Image.file(File(_imageFile!.path))]
        ],
      ),
    );
  }
}
