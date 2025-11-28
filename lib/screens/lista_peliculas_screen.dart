import 'package:flutter/material.dart';
import '../mocks/peliculas_mock.dart';
import '../models/pelicula.dart';

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

            onTap: () {
              Navigator.pushNamed(
                context,
                'detalle_peliculas',
                arguments: Pelicula(
                  titulo: peli['titulo'],
                  imagen: peli['imagen'],
                  descripcion: peli['descripcion'],
                ),
              );
            },
          );
        },
      ),
    );
  }
}
