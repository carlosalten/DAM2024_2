import 'package:flutter/material.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';
import 'package:u1_navegacion/constants.dart';

class CelularesPage extends StatelessWidget {
  const CelularesPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Celulares'),
      ),
      body: Center(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(MdiIcons.cellphone, size: 50),
            Text('Celulares', style: TextStyle(fontSize: 20, color: Color(kTertiary))),
          ],
        ),
      ),
    );
  }
}
