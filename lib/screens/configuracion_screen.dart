import 'package:flutter/material.dart';

class ConfiguracionScreen extends StatefulWidget {
  const ConfiguracionScreen({super.key});

  @override
  State<ConfiguracionScreen> createState() => _ConfiguracionScreenState();
}

class _ConfiguracionScreenState extends State<ConfiguracionScreen> {
  bool modoOscuro = false;
  bool notificaciones = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Configuracion"),
        backgroundColor: Color.fromARGB(255, 58, 128, 85),
      ),
      body: ListView(
        children: [
          SwitchListTile(
            title: const Text("Modo oscuro"),
            value: modoOscuro,
            onChanged: (value) {
              setState(() => modoOscuro = value);
            },
          ),
          SwitchListTile(
            title: const Text("Notificaciones"),
            value: notificaciones,
            onChanged: (value) {
              setState(() => notificaciones = value);
            },
          ),
        ],
      ),
    );
  }
}
