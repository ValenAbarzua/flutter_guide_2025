import 'package:flutter/material.dart';
import '../mocks/peliculas_mock.dart';
import '../widgets/pelicula_card.dart';

class ListaPeliculasScreen extends StatefulWidget {
  const ListaPeliculasScreen({super.key});

  @override
  State<ListaPeliculasScreen> createState() => ListaPeliculasScreenState();
}

class ListaPeliculasScreenState extends State<ListaPeliculasScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Listado de Peliculas")),

      floatingActionButton: FloatingActionButton(
        backgroundColor: const Color.fromARGB(255, 9, 51, 11),
        child: const Icon(Icons.add, color: Colors.white),
        onPressed: () async {
          final nuevaPeli = await Navigator.pushNamed(
            context,
            'agregar_peliculas',
          );

          if (nuevaPeli != null) {
            setState(() {
              mockPeliculas.add(nuevaPeli as Map<String, dynamic>);
            });
          }
        },
      ),

      body: ListView.builder(
        itemCount: mockPeliculas.length,
        itemBuilder: (context, index) {
          final peli = mockPeliculas[index];

          return PeliculaCard(
            titulo: peli['titulo'],
            genero: peli['genero'],
            imagen: peli['imagen'],
            descripcion: peli['descripcion'],
            popularidad: peli['popularidad'],
          );
        },
      ),
    );
  }
}
