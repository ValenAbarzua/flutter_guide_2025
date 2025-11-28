import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("The Movie App")),
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            const DrawerHeader(
              decoration: BoxDecoration(
                color: Color.fromARGB(255, 140, 238, 178),
              ),
              child: Text(
                "Menú",
                style: TextStyle(
                  color: Color.fromARGB(255, 82, 104, 81),
                  fontSize: 24,
                ),
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
        child: Padding(
          padding: const EdgeInsets.all(20.0),

          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              // Imagen home
              Container(
                width: 200,
                height: 200,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  image: const DecorationImage(
                    image: AssetImage('assets/images/imagen-home.jpg'),
                    fit: BoxFit.cover,
                  ),
                ),
              ),

              const SizedBox(height: 25),

              // Título home
              const Text(
                "Bienvenido a The Movie App!",
                style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                textAlign: TextAlign.center,
              ),

              const SizedBox(height: 10),

              // Descripción
              const Text(
                "Explora tus películas favoritas y mira todos sus detalles",
                style: TextStyle(fontSize: 15),
                textAlign: TextAlign.center,
              ),

              const SizedBox(height: 40),

              // Boton listado de peliculas
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  elevation: 8,
                  shadowColor: const Color.fromARGB(255, 0, 0, 0),

                  backgroundColor: const Color.fromARGB(255, 70, 139, 91),
                  padding: const EdgeInsets.symmetric(
                    horizontal: 30,
                    vertical: 15,
                  ),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(12),
                  ),
                ),
                onPressed: () {
                  Navigator.pushNamed(context, 'lista_peliculas');
                },
                child: const Text(
                  "Ver listado de películas",
                  style: TextStyle(fontSize: 18, color: Colors.white),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
