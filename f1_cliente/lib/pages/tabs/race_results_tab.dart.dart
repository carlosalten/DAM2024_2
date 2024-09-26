import 'package:flutter/material.dart';

class RaceResultsTab extends StatelessWidget {
  const RaceResultsTab({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage('assets/images/race_results_bg.jpg'),
          fit: BoxFit.fitWidth,
        ),
      ),
    );
  }
}
