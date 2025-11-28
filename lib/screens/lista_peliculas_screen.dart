import 'package:flutter/material.dart';
import '../mocks/peliculas_mock.dart';
import '../models/pelicula.dart';
import '../widgets/pelicula_card.dart';

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

          return PeliculaCard(
            titulo: peli['titulo'],
            genero: peli['genero'],
            imagen: peli['imagen'],
            onTap: () {
              Navigator.pushNamed(context, 'detalle', arguments: peli);
            },
          );
        },
      ),
    );
  }
}
