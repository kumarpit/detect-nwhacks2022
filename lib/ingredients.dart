import 'package:detect/models/text_model.dart';
import 'package:flutter/material.dart';

class IngredientScreen extends StatelessWidget {
  final List<RecognizedText> extractedText;
  const IngredientScreen({Key? key, required this.extractedText})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(),
        body: ListView.builder(
            itemCount: extractedText.length,
            itemBuilder: (BuildContext context, int index) {
              return Container(
                height: 50,
                child:
                    Center(child: Text(extractedText[index].block.toString())),
              );
            }));
  }
}
