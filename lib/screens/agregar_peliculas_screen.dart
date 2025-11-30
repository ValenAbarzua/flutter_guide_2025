import 'package:flutter/material.dart';

class AgregarPeliculasScreen extends StatefulWidget {
  const AgregarPeliculasScreen({super.key});

  @override
  State<AgregarPeliculasScreen> createState() => AgregarPeliculasScreenState();
}

class AgregarPeliculasScreenState extends State<AgregarPeliculasScreen> {
  final _formKey = GlobalKey<FormState>();

  final tituloNuevo = TextEditingController();
  final descripcionNuevo = TextEditingController();
  final imagenNuevo = TextEditingController();

  String? generoSeleccionado;
  double popularidad = 5.0;
  bool destacada = false;

  //Lista de los generos
  final generos = [
    'Comedia',
    'Romance',
    'Terror',
    'Drama',
    'Ciencia Ficcion',
    'Animada',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Agregar una pelicula'),
        backgroundColor: const Color.fromARGB(255, 198, 207, 198),
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(20),
        child: Form(
          key: _formKey,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              //Titulo
              TextFormField(
                controller: tituloNuevo,
                decoration: const InputDecoration(
                  labelText: "Titulo",
                  border: OutlineInputBorder(),
                ),
                validator: (value) =>
                    value!.isEmpty ? 'El titulo es obligatorio!' : null,
              ),
              const SizedBox(height: 20),

              //Genero
              DropdownButtonFormField<String>(
                decoration: const InputDecoration(
                  labelText: "Genero",
                  border: OutlineInputBorder(),
                ),
                items: generos
                    .map((g) => DropdownMenuItem(value: g, child: Text(g)))
                    .toList(),
                onChanged: (value) {
                  setState(() {
                    generoSeleccionado = value;
                  });
                },

                validator: (value) =>
                    value == null ? 'Selecciona un genero' : null,
              ),
              const SizedBox(height: 20),

              //Descripcion
              TextFormField(
                controller: descripcionNuevo,
                minLines: 3,
                maxLines: 7,
                decoration: const InputDecoration(
                  labelText: 'Descripcion',
                  border: OutlineInputBorder(),
                ),
                validator: (value) =>
                    value!.isEmpty ? 'Agrega una descripcion' : null,
              ),

              const SizedBox(height: 20),

              //Imagen con URL
              TextFormField(
                controller: imagenNuevo,
                decoration: const InputDecoration(
                  labelText: "URL de la imagen",
                  border: OutlineInputBorder(),
                ),
                validator: (value) =>
                    value!.isEmpty ? "Ingresa una URL valida" : null,
                onChanged: (_) {
                  setState(() {});
                },
              ),
              const SizedBox(height: 10),

              //Preview de la imagen
              if (imagenNuevo.text.isNotEmpty)
                ClipRRect(
                  borderRadius: BorderRadiusGeometry.circular(12),
                  child: Image.network(
                    imagenNuevo.text,
                    height: 180,
                    fit: BoxFit.cover,
                    errorBuilder: (_, __, ___) => Container(
                      height: 180,
                      color: Colors.grey[300],
                      alignment: Alignment.center,
                      child: const Text('No se pudo cargar la imagen'),
                    ),
                  ),
                ),
              const SizedBox(height: 20),

              //Popularidad
              const Text(
                'Popularidad',
                style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
              ),
              Slider(
                value: popularidad,
                min: 0,
                max: 10,
                divisions: 20,
                label: popularidad.toStringAsFixed(1),
                onChanged: (value) {
                  setState(() {
                    popularidad = value;
                  });
                },
              ),

              const SizedBox(height: 20),

              //Boton para guardar la pelicula
              SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                  onPressed: () {
                    if (_formKey.currentState!.validate()) {
                      final nuevaPeli = {
                        "titulo": tituloNuevo.text,
                        "genero": generoSeleccionado,
                        "descripcion": descripcionNuevo.text,
                        "imagen": imagenNuevo.text,
                        "popularidad": popularidad,
                        "destacada": destacada,
                      };

                      Navigator.pop(context, nuevaPeli);
                    }
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.black,
                    padding: const EdgeInsets.symmetric(vertical: 14),
                  ),
                  child: const Text(
                    "Guardar película",
                    style: TextStyle(fontSize: 18, color: Colors.white),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
