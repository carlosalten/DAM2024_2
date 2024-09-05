import 'package:flutter/material.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';
import 'package:u1_navegacion2/pages/empresas_page.dart';
import 'package:u1_navegacion2/pages/monedas_page.dart';

class EmpresasBolsaPage extends StatefulWidget {
  const EmpresasBolsaPage({super.key});

  @override
  State<EmpresasBolsaPage> createState() => _EmpresasBolsaPageState();
}

class _EmpresasBolsaPageState extends State<EmpresasBolsaPage> {
  List paginas = [EmpresasPage(), MonedasPage()];
  int paginaSeleccionada = 1;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: paginas[paginaSeleccionada],
      bottomNavigationBar: NavigationBar(
        selectedIndex: paginaSeleccionada,
        destinations: [
          NavigationDestination(icon: Icon(MdiIcons.domain), label: 'Empresas'),
          NavigationDestination(icon: Icon(MdiIcons.cashMultiple), label: 'Monedas'),
        ],
        onDestinationSelected: (pagina) {
          setState(() {
            paginaSeleccionada = pagina;
          });
        },
      ),
    );
  }
}
