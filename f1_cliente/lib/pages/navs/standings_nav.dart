import 'package:f1_cliente/constants.dart';
import 'package:f1_cliente/pages/tabs/constructors_tab.dart';
import 'package:f1_cliente/pages/tabs/drivers_tab.dart';
import 'package:f1_cliente/pages/tabs/race_results_tab.dart.dart';
import 'package:flutter/material.dart';

class StandingsNav extends StatelessWidget {
  const StandingsNav({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        backgroundColor: Color(kTertiaryColor),
        //APPBAR
        appBar: AppBar(
          leading: Container(
            margin: EdgeInsets.only(left: 10),
            child: Image.asset('assets/images/f1.png'),
          ),
          title: Text('STANDINGS', style: estiloAppbar),
          bottom: TabBar(
            splashFactory: NoSplash.splashFactory, //quita la sombra al hacer tap en el tab.
            labelColor: Colors.white,
            indicatorColor: Colors.white,
            unselectedLabelColor: Colors.white,
            labelStyle: TextStyle(fontWeight: FontWeight.bold),
            unselectedLabelStyle: TextStyle(fontWeight: FontWeight.normal),
            indicatorSize: TabBarIndicatorSize.tab,
            indicatorWeight: 3,
            dividerColor: Colors.transparent,
            indicatorPadding: EdgeInsets.symmetric(horizontal: 0),
            tabs: [Tab(text: 'Drivers'), Tab(text: 'Constructors'), Tab(text: 'Race results')],
          ),
        ),
        //BODY
        body: TabBarView(children: [DriversTab(), ConstructorsTab(), RaceResultsTab()]),
      ),
    );
  }
}
