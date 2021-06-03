import 'package:flutter/material.dart';
import '../utils/app_routes.dart';

class MaindDrawer extends StatelessWidget {
  Widget _createItem(IconData icon, String label, Function onTap) {
    return ListTile(
      leading: Icon(
        icon,
        size: 26,
      ),
      title: Text(
        label,
        style: TextStyle(
            fontFamily: 'RobotoCondensed',
            fontSize: 20,
            fontWeight: FontWeight.bold // peso da fonte
            ),
      ),
      onTap: onTap,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Column(
        children: [
          Container(
            height: 120, // altura do texto
            width: double.infinity,
            padding: EdgeInsets.all(20),
            color: Theme.of(context).primaryColor,
            alignment: Alignment.bottomRight,
            child: Text(
              'Opções',
              style: TextStyle(
                fontWeight: FontWeight.w900, // peso
                fontSize: 25,
                color: Colors.white,
              ),
            ),
          ),
          SizedBox(
            height: 20,
          ), // espeaço
          _createItem(
            Icons.restaurant,
            'Refeições',
            //pushReplacementNamed ADD NOVA TELA E N IMPILHA
            () => Navigator.of(context).pushReplacementNamed(AppRoutes.HOME),
          ),
          _createItem(
            Icons.settings,
            'Configurações',
            () =>
                Navigator.of(context).pushReplacementNamed(AppRoutes.SETTINGS),
          )
        ],
      ),
    );
  }
}
