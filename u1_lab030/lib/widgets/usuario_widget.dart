import 'package:flutter/material.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';

class UsuarioWidget extends StatelessWidget {
  const UsuarioWidget({
    super.key,
    required this.user,
  });

  final dynamic user;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Icon(MdiIcons.accountCircle, size: 26, color: Colors.white),
      title: Text(user['email'], style: TextStyle(fontSize: 14, color: Colors.white)),
      subtitle: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              Icon(MdiIcons.ipNetworkOutline, color: Colors.white),
              Text(user['ip'], style: TextStyle(fontSize: 12, color: Colors.white)),
            ],
          ),
          Row(
            children: [
              Icon(MdiIcons.cellphone, size: 18, color: Colors.white),
              Text(user['telefono'], style: TextStyle(fontSize: 12, color: Colors.white)),
            ],
          ),
        ],
      ),
      trailing: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text('Ultima Conexión:', style: TextStyle(color: Colors.white)),
          Text(user['ultimo_login'], style: TextStyle(color: Colors.white)),
        ],
      ),
    );
  }
}
