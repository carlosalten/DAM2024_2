import 'package:flutter/material.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';
import 'package:u1_navegacion/constants.dart';

class TabletsPage extends StatelessWidget {
  const TabletsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Tablets'),
      ),
      body: Center(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(MdiIcons.tablet, size: 50),
            Text('Tablets', style: TextStyle(fontSize: 20, color: Color(kTertiary))),
          ],
        ),
      ),
    );
  }
}
