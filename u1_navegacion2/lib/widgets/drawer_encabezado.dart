import 'package:flutter/material.dart';

class DrawerEncabezado extends StatelessWidget {
  const DrawerEncabezado({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return DrawerHeader(
      padding: EdgeInsets.all(0),
      child: Container(
        padding: EdgeInsets.all(5),
        width: double.infinity,
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [Colors.purple, Colors.orange],
          ),
        ),
        child: Column(
          children: [
            Expanded(
              child: Container(
                child: Image.asset('assets/images/usm.jpg'),
              ),
            ),
            Text('DAM | Laboratorio', style: TextStyle(color: Colors.white)),
          ],
        ),
      ),
    );
  }
}
