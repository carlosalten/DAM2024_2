import 'package:flutter/material.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';
import 'package:u1_navegacion/pages/tabs/tab_audifonos.dart';
import 'package:u1_navegacion/pages/tabs/tab_celulares.dart';
import 'package:u1_navegacion/pages/tabs/tab_notebooks.dart';
import 'package:u1_navegacion/pages/tabs/tab_tablets.dart';

class NavbarPage extends StatefulWidget {
  const NavbarPage({super.key});

  @override
  State<NavbarPage> createState() => _NavbarPageState();
}

class _NavbarPageState extends State<NavbarPage> {
  int paginaSeleccionada = 0;

  List paginas = [TabAudifonos(), TabCelulares(), TabNotebooks(), TabTablets()];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Ejemplo Navbar'),
      ),
      body: paginas[paginaSeleccionada],
      floatingActionButton: FloatingActionButton(
        shape: CircleBorder(),
        onPressed: () {},
        child: Icon(MdiIcons.plus),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      bottomNavigationBar: NavigationBar(
        selectedIndex: paginaSeleccionada,
        onDestinationSelected: (int opcion) {
          print('OPCION: $opcion');
          setState(() {
            this.paginaSeleccionada = opcion;
          });
        },
        destinations: [
          NavigationDestination(
            icon: Icon(MdiIcons.headphones),
            label: 'Audífonos',
          ),
          NavigationDestination(
            icon: Icon(MdiIcons.cellphone),
            label: 'Celulares',
          ),
          NavigationDestination(
            icon: Icon(MdiIcons.laptop),
            label: 'Notebooks',
          ),
          NavigationDestination(
            icon: Icon(MdiIcons.tablet),
            label: 'Tablets',
          ),
        ],
      ),
    );
  }
}
