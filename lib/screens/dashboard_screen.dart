import 'package:day_night_switcher/day_night_switcher.dart';
import 'package:flutter/material.dart';
import 'package:tap2024b/settings/global_values.dart';

class DashboardScreen extends StatelessWidget {
  const DashboardScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('TAP Ago-Dic 2024', 
          style: TextStyle(fontFamily: 'SuperM'),
        ),
      ),
      drawer: myDrawer(context),
    );
  }

  Widget myDrawer(context){
    return Drawer(
      child: ListView(
        children: [
          const UserAccountsDrawerHeader(
            currentAccountPicture: CircleAvatar(
              backgroundImage: NetworkImage('https://i.pravatar.cc/300'),
            ),
            accountName: Text('Rubensin Torres Frias'), 
            accountEmail: Text('ruben.torres@itcelaya.edu.mx')
          ),
          ListTile(
            onTap: (){},
            title: Text('Practica 1'),
            subtitle: Text('Challenge'),
            leading: Icon(Icons.code),
            trailing: Icon(Icons.chevron_right),
          ),
          ListTile(
            onTap: ()=>Navigator.pushNamed(context,"/movies"),
            title: Text('Popular Movies'),
            subtitle: Text('Test api'),
            leading: Icon(Icons.movie),
            trailing: Icon(Icons.chevron_right),
          ),
          ListTile(
            onTap: (){
              Navigator.pop(context);
              Navigator.pop(context);
            },
            title: Text('Salir'),
            leading: Icon(Icons.exit_to_app),
            trailing: Icon(Icons.chevron_right),
          ),
          DayNightSwitcher(
            isDarkModeEnabled: GlobalValues.banThemeDark.value, 
            onStateChanged: (isDarkModeEnabled) {
              GlobalValues.banThemeDark.value = isDarkModeEnabled;
            },
          )

        ],
      ),
    );
  }
}