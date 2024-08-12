import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Clase 03'),
      ),
      body: Container(
        width: double.infinity,
        color: Colors.orange.shade200,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                Container(
                  margin: EdgeInsets.all(5),
                  padding: EdgeInsets.all(3),
                  width: 120,
                  height: 120,
                  decoration: BoxDecoration(
                    color: Colors.deepOrange,
                    border: Border.all(
                      color: Colors.blue,
                      width: 5,
                    ),
                    borderRadius: BorderRadius.all(Radius.circular(10)),
                  ),
                  alignment: Alignment.center,
                  child: Text('1', style: TextStyle(fontSize: 25)),
                ),
                Container(
                  margin: EdgeInsets.all(5),
                  padding: EdgeInsets.all(3),
                  color: Colors.blue,
                  width: 120,
                  height: 120,
                  child: Text('2', style: TextStyle(fontSize: 25)),
                ),
                Container(
                  margin: EdgeInsets.all(5),
                  padding: EdgeInsets.all(3),
                  color: Colors.deepPurple,
                  width: 120,
                  height: 120,
                  child: Text('3', style: TextStyle(fontSize: 25)),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
