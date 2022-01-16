import 'image_banner.dart';
import 'package:flutter/material.dart';

class CautionScreen extends StatelessWidget {
  const CautionScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Caution"),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          ImageBanner("lib/images/8b.2.png")
        ],
      )
    );
  }
}