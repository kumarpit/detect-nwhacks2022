import 'image_banner.dart';
import 'package:flutter/material.dart';

class DangerScreen extends StatelessWidget {
  const DangerScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Danger"),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          ImageBanner("lib/images/8b.3.png")
        ],
      )
    );
  }
}