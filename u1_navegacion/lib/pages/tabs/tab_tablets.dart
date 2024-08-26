import 'package:flutter/material.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';
import 'package:u1_navegacion/constants.dart';

class TabTablets extends StatelessWidget {
  const TabTablets({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(MdiIcons.tablet, size: 50),
          Text('Tablets', style: TextStyle(fontSize: 20, color: Color(kTertiary))),
        ],
      ),
    );
  }
}
