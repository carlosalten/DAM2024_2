import 'package:flutter/material.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';
import 'package:u1_navegacion/constants.dart';
import 'package:u1_navegacion/pages/tabs/tab_audifonos.dart';
import 'package:u1_navegacion/pages/tabs/tab_celulares.dart';
import 'package:u1_navegacion/pages/tabs/tab_notebooks.dart';
import 'package:u1_navegacion/pages/tabs/tab_tablets.dart';

class TabsPage extends StatelessWidget {
  const TabsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4,
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Color(kTertiary),
          title: Text('Ejemplo Tabs'),
          bottom: TabBar(
            tabAlignment: TabAlignment.center,
            isScrollable: true,
            labelColor: Colors.white,
            unselectedLabelColor: Colors.white60,
            indicatorColor: Color(kSecondary),
            tabs: [
              Tab(icon: Icon(MdiIcons.headphones), text: 'Audífonos'),
              Tab(icon: Icon(MdiIcons.cellphone), text: 'Celulares'),
              Tab(icon: Icon(MdiIcons.laptop), text: 'Notebooks'),
              Tab(icon: Icon(MdiIcons.tablet), text: 'Tablets'),
            ],
          ),
        ),
        body: Padding(
          padding: EdgeInsets.all(10),
          child: TabBarView(
            children: [TabAudifonos(), TabCelulares(), TabNotebooks(), TabTablets()],
          ),
        ),
      ),
    );
  }
}
