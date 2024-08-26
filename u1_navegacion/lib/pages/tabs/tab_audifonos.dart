import 'package:flutter/material.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';
import 'package:u1_navegacion/constants.dart';

class TabAudifonos extends StatelessWidget {
  const TabAudifonos({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(MdiIcons.headphones, size: 50),
          Text('Audífonos', style: TextStyle(fontSize: 20, color: Color(kTertiary))),
        ],
      ),
    );
  }
}
