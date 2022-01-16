import 'package:flutter/material.dart';
import 'package:google_ml_kit/google_ml_kit.dart';
import 'package:detect/models/text_model.dart';

Future<List<RecognizedText>> getText(String path) async {
  final inputImage = InputImage.fromFilePath(path);
  final textDetector = GoogleMlKit.vision.textDetector();
  final RecognisedText recognisedText =
      await textDetector.processImage(inputImage);

  List<RecognizedText> recognizedList = [];

  for (TextBlock block in recognisedText.blocks) {
    recognizedList.add(
        RecognizedText(lines: block.lines, block: block.text.toLowerCase()));
  }

  return recognizedList;
}
