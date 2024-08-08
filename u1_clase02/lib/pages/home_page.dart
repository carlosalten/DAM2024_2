import 'package:flutter/material.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //APPBAR
      appBar: AppBar(
        leading: Icon(
          Icons.android,
          color: Colors.white,
          size: 30,
        ),
        centerTitle: true,
        title: Text(
          'Hola Mundo',
          style: TextStyle(color: Colors.white),
        ),
        backgroundColor: Color(0xFF27449F),
        // backgroundColor: Colors.orange,
      ),
      //BODY
      body: Column(
        children: [
          Expanded(
            flex: 2,
            child: Container(
              width: double.infinity,
              color: Color(0xFF6CD0D0),
              child: Icon(
                MdiIcons.rocketLaunch,
                color: Colors.white,
                size: 70,
              ),
            ),
          ),
          Expanded(
            flex: 3,
            child: Container(
              width: double.infinity,
              color: Color(0xFFF98128),
              child: Icon(
                MdiIcons.ufoOutline,
                color: Colors.white,
                size: 70,
              ),
            ),
          ),
          Expanded(
            child: Container(
              width: double.infinity,
              color: Color(0xFFDD3162),
              child: Icon(
                MdiIcons.alienOutline,
                color: Colors.white,
                size: 70,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
