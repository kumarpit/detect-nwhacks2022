import 'package:flutter/material.dart';

class ImageBanner extends StatelessWidget {
    final String _assetPath;

    ImageBanner(this._assetPath, {Key? key}) : super(key: key);

    @override
    Widget build(BuildContext context) {
        return Container(
          constraints: const BoxConstraints.expand(
              width: 180.0,
          ),
          decoration: const BoxDecoration(color: Colors.grey),
          child: Image.asset(
              _assetPath,
              fit: BoxFit.cover,
          )
        );
    }
}