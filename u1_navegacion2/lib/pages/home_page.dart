import 'package:flutter/material.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';
import 'package:u1_navegacion2/data/constants.dart';
import 'package:u1_navegacion2/pages/empresas_bolsa_page.dart';
import 'package:u1_navegacion2/pages/productos_page.dart';
import 'package:u1_navegacion2/widgets/drawer_encabezado.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List paginas = [EmpresasBolsaPage(), ProductosPage()];
  int paginaSeleccionada = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Laboratorio 07', style: estTituloAppbar),
        iconTheme: IconThemeData(color: Colors.white),
        flexibleSpace: Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
              colors: [
                Colors.purple,
                Colors.red,
                Colors.orange,
              ],
              begin: Alignment.bottomLeft,
              end: Alignment.topRight,
              //stops: []
            ),
          ),
        ),
      ),
      endDrawer: Drawer(
        backgroundColor: Color(0xFFDDDDDD),
        child: Column(
          children: [
            DrawerEncabezado(),
            ListTile(
              leading: Icon(MdiIcons.domain),
              title: Text('Empresas y Bolsa'),
              tileColor: Colors.white,
              onTap: () => _navegarDrawer(context, 0),
            ),
            Divider(),
            ListTile(
              leading: Icon(MdiIcons.packageVariantClosed),
              title: Text('Productos'),
              tileColor: Colors.white,
              onTap: () => _navegarDrawer(context, 1),
            ),
            Spacer(),
            ListTile(
              leading: Icon(MdiIcons.arrowRight),
              title: Text('Cerrar Menú'),
              tileColor: Colors.white,
              onTap: () => _cerrarDrawer(context),
            ),
          ],
        ),
      ),
      body: paginas[paginaSeleccionada],
    );
  }

  void _cerrarDrawer(BuildContext context) {
    Navigator.pop(context);
  }

  void _navegarDrawer(BuildContext context, int pagina) {
    setState(() {
      paginaSeleccionada = pagina;
    });
    this._cerrarDrawer(context);
  }
}
