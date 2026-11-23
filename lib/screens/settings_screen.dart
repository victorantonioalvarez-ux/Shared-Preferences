import 'package:flutter/material.dart';
import 'package:preferences_app_plantilla/preferences/preferences.dart';
import 'package:preferences_app_plantilla/widgets/widgets.dart';

class SettingsScreen extends StatefulWidget {
  static const String routerName = 'settings';

  const SettingsScreen({Key? key}) : super(key: key);

  @override
  State<SettingsScreen> createState() => _SettingsScreenState();
}

class _SettingsScreenState extends State<SettingsScreen> {
  /*bool _isDarkMode = false;
  int _genere = 1;
  String _nom = 'Jaume Camps';*/

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Settings'),
        ),
        drawer: const SideMenu(),
        body: Padding(
          padding: const EdgeInsets.all(8.0),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text('Configuració',
                    style:
                        TextStyle(fontSize: 45, fontWeight: FontWeight.w300)),
                const Divider(),
                SwitchListTile(
                    value: Preferences.isDarkMode,
                    title: const Text('Dark Mode'),
                    onChanged: (value) {
                      Preferences.isDarkMode = value;
                      setState(() {});
                    }),
                const Divider(),
                RadioGroup(
                  groupValue: Preferences.genere,
                  onChanged: (value) {
                    Preferences.genere = value ?? 1;
                    setState(() {});
                  },
                  child: const Column(
                    children: [
                      RadioListTile(value: 1, title: Text('Masculí')),
                      Divider(),
                      RadioListTile(value: 2, title: Text('Femení')),
                    ],
                  ),
                ),
                Divider(),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  child: TextFormField(
                    initialValue: Preferences.nom,
                    onChanged: (value) {
                      Preferences.nom = value;
                      setState(() {});
                    },
                    decoration: InputDecoration(
                        labelText: 'Nom', helperText: 'Nom de l\'usuari'),
                  ),
                )
              ],
            ),
          ),
        ));
  }
}
