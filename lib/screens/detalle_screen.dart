import 'package:flutter/material.dart';

class DetalleScreen extends StatelessWidget {
  const DetalleScreen({super.key});

  @override
  Widget build(BuildContext context) {
    // 🟡 Recuperamos los datos enviados desde la lista
    final peli = ModalRoute.of(context)!.settings.arguments as Map;

    return Scaffold(
      appBar: AppBar(title: Text(peli['titulo'])),

      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Center(
              child: Image.network(
                peli['imagen'],
                height: 250,
                fit: BoxFit.cover,
              ),
            ),
            const SizedBox(height: 20),

            Text(
              "Género: ${peli['genero']}",
              style: const TextStyle(fontSize: 18),
            ),
            const SizedBox(height: 10),

            Text(
              "Popularidad: ${peli['popularidad']}",
              style: const TextStyle(fontSize: 18),
            ),

            const SizedBox(height: 20),
            const Text(
              "Formulario de ejemplo:",
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),

            TextFormField(
              decoration: const InputDecoration(labelText: "Comentario"),
            ),

            Row(
              children: [
                const Text("Favorita"),
                Switch(value: true, onChanged: (_) {}),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
