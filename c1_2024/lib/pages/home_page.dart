import 'package:c1_2024/pages/tab_campuses.dart';
import 'package:c1_2024/pages/tab_estudiantes.dart';
import 'package:flutter/material.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int paginaSeleccionada = 0;
  List paginas = [TabCampuses(), TabEstudiantes()];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        leading: Icon(MdiIcons.cellphoneText, size: 30),
        foregroundColor: Colors.white,
        title: Text('Certamen 1 DAM 300'),
        flexibleSpace: Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
              colors: [
                Color(0xFF4F60EE),
                Color(0xFFE42A6D),
              ],
            ),
          ),
        ),
      ),
      bottomNavigationBar: NavigationBar(
        destinations: [
          NavigationDestination(selectedIcon: Icon(MdiIcons.school), icon: Icon(MdiIcons.schoolOutline), label: 'Campuses'),
          NavigationDestination(selectedIcon: Icon(MdiIcons.accountSchool), icon: Icon(MdiIcons.accountSchoolOutline), label: 'Estudiantes'),
        ],
        selectedIndex: paginaSeleccionada,
        onDestinationSelected: (pagina) {
          setState(() {
            paginaSeleccionada = pagina;
          });
        },
      ),
      body: paginas[paginaSeleccionada],
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: Icon(MdiIcons.plus, color: Colors.white),
        backgroundColor: Colors.red,
        shape: CircleBorder(),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
    );
  }
}
