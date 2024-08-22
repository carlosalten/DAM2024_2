import 'package:flutter/material.dart';

class ImagenesPage extends StatelessWidget {
  const ImagenesPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Imágenes'),
      ),
      body: Padding(
        padding: EdgeInsets.all(10),
        child: Image(image: AssetImage('assets/images/usm1.jpeg')),
      ),
    );
  }
}
