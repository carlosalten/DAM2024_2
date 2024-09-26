import 'package:f1_cliente/constants.dart';
import 'package:f1_cliente/pages/navs/fantasy_nav.dart';
import 'package:f1_cliente/pages/navs/latest_nav.dart';
import 'package:f1_cliente/pages/navs/racing_nav.dart';
import 'package:f1_cliente/pages/navs/standings_nav.dart';
import 'package:f1_cliente/pages/navs/video_nav.dart';
import 'package:flutter/material.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int paginaSeleccionada = 3;
  List paginas = [LatestNav(), VideoNav(), RacingNav(), StandingsNav(), FantasyNav()];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(kTertiaryColor),

      //BODY
      body: paginas[paginaSeleccionada],
      //NAVIGATION
      bottomNavigationBar: NavigationBar(
        backgroundColor: Colors.white,
        indicatorColor: Colors.transparent,
        selectedIndex: paginaSeleccionada,
        destinations: [
          NavigationDestination(
            selectedIcon: Icon(MdiIcons.textBoxOutline, color: Color(kPrimaryColor)),
            icon: Icon(MdiIcons.textBoxOutline),
            label: 'Latest',
          ),
          NavigationDestination(
            selectedIcon: Icon(Icons.play_circle_outline, color: Color(kPrimaryColor)),
            icon: Icon(Icons.play_circle_outline),
            label: 'Video',
          ),
          NavigationDestination(
            selectedIcon: Icon(MdiIcons.flagCheckered, color: Color(kPrimaryColor)),
            icon: Icon(MdiIcons.flagCheckered),
            label: 'Racing',
          ),
          NavigationDestination(
            selectedIcon: Icon(Icons.sports_motorsports, color: Color(kPrimaryColor)),
            icon: Icon(Icons.sports_motorsports),
            label: 'Standings',
          ),
          NavigationDestination(
            selectedIcon: Icon(MdiIcons.trophyOutline, color: Color(kPrimaryColor)),
            icon: Icon(MdiIcons.trophyOutline),
            label: 'Fantasy',
          ),
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
