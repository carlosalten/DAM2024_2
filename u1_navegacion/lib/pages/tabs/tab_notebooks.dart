import 'package:flutter/material.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';
import 'package:u1_navegacion/constants.dart';

class TabNotebooks extends StatelessWidget {
  const TabNotebooks({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(MdiIcons.laptop, size: 50),
          Text('Notebooks', style: TextStyle(fontSize: 20, color: Color(kTertiary))),
        ],
      ),
    );
  }
}
