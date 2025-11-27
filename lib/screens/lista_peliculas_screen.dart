import 'package:flutter/material.dart';
import '../mocks/peliculas_mock.dart';

class ListaPeliculasScreen extends StatelessWidget {
  const ListaPeliculasScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Listado de Películas")),

      body: ListView.builder(
        itemCount: mockPeliculas.length,
        itemBuilder: (context, index) {
          final peli = mockPeliculas[index];

          return ListTile(
            leading: Image.network(
              peli['imagen'],
              width: 60,
              fit: BoxFit.cover,
            ),
            title: Text(peli['titulo']),
            subtitle: Text(peli['genero']),

            // 👉 Navegar al detalle enviando parámetros
            onTap: () {
              Navigator.pushNamed(context, 'detalle', arguments: peli);
            },
          );
        },
      ),
    );
  }
}
