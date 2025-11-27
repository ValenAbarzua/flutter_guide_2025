import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Home")),

      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            const DrawerHeader(
              decoration: BoxDecoration(color: Colors.deepPurple),
              child: Text(
                "Menú",
                style: TextStyle(color: Colors.white, fontSize: 24),
              ),
            ),
            ListTile(
              leading: const Icon(Icons.movie),
              title: const Text("Listado de Películas"),
              onTap: () {
                Navigator.pushNamed(context, 'lista_peliculas');
              },
            ),
          ],
        ),
      ),

      body: Center(
        child: ElevatedButton(
          onPressed: () {
            Navigator.pushNamed(context, 'lista_peliculas');
          },
          child: const Text("Ir al listado"),
        ),
      ),
    );
  }
}
