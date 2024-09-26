import 'package:flutter/material.dart';

class ConstructorsTab extends StatelessWidget {
  const ConstructorsTab({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage('assets/images/constructors_bg.jpg'),
          fit: BoxFit.fitWidth,
        ),
      ),
    );
  }
}
