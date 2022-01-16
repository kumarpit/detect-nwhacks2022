import 'image_banner.dart';
import 'package:flutter/material.dart';

class OkayScreen extends StatelessWidget {
  const OkayScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("All is well"),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          ImageBanner("lib/images/8b.1.png")
        ],
      )
    );
  }
}