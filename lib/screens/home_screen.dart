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
            //Cabecera del drawer
            const DrawerHeader(
              decoration: BoxDecoration(
                color: Color.fromARGB(255, 58, 128, 85),
              ),
              child: Text(
                "Menú",
                style: TextStyle(
                  color: Color.fromARGB(255, 23, 32, 22),
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            //Seccion home
            ListTile(
              leading: const Icon(Icons.movie),
              title: const Text("Home"),
              onTap: () {
                Navigator.pop(context);
                Navigator.pushNamed(context, 'home');
              },
            ),
            //Seccion listado de peliculas
            ListTile(
              leading: const Icon(Icons.movie),
              title: const Text("Listado de Películas"),
              onTap: () {
                Navigator.pop(context);
                Navigator.pushNamed(context, 'lista_peliculas');
              },
            ),
            const Divider(),

            //Seccion configuracion
            ListTile(
              leading: const Icon(Icons.settings),
              title: const Text("Configuracion"),
              onTap: () {
                //     Navigator.pop(context);
                Navigator.pushNamed(context, 'configuracion');
              },
            ),

            //Seccion acerca de la app
            ListTile(
              leading: const Icon(Icons.info_outline),
              title: const Text("Acerca de la app"),
              onTap: () {
                Navigator.pop(context);
                Navigator.pushNamed(context, 'informacion');
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
