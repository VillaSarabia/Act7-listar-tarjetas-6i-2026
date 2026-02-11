import 'package:flutter/material.dart';

void main() => runApp(AppDecktcg());

class AppDecktcg extends StatelessWidget {
  const AppDecktcg({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(debugShowCheckedModeBanner: false, home: Productos());
  }
} //FIN CLASE APPDECKTCG

class Productos extends StatelessWidget {
  const Productos({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Tienda de coleccionables DECK TCG',
          style: TextStyle(
            color: Colors.white, // Letra blanca
            fontWeight: FontWeight.bold,
          ),
        ),
        backgroundColor: const Color(
          0xFFD32F2F,
        ), // Un rojo "moderno" (Material Red 700)
        elevation: 4, // Sombra ligera para dar profundidad
        leading: const Icon(
          Icons.ac_unit, // Icono que asemeja un juguete/figura
          color: Colors.white,
        ),
        actions: [
          IconButton(
            icon: const Icon(
              Icons.style,
              color: Colors.white,
            ), // Icono de tarjetas
            onPressed: () {
              // Acción al presionar
            },
          ),
          IconButton(
            icon: const Icon(
              Icons.person,
              color: Colors.white,
            ), // Icono de usuario
            onPressed: () {
              // Acción al presionar
            },
          ),
          IconButton(
            icon: const Icon(
              Icons.settings,
              color: Colors.white,
            ), // Icono de ajustes
            onPressed: () {
              // Acción al presionar
            },
          ),
        ],
      ),
      body: ListView(
        padding: const EdgeInsets.all(16.0),
        children: [
          _crearTarjeta(
            'Mazo Yahel Villa Sarabia',
            'Colección Seto Kaiba',
            'https://raw.githubusercontent.com/VillaSarabia/imagenes-para-Flutter-6to-I-Fecha-11-Feb-2026/refs/heads/main/pkmcarta%201.png', // URL directa
          ),
          _crearTarjeta(
            'Mazo Entrenador Pokemon',
            'Colección Yugi Muto',
            'https://raw.githubusercontent.com/VillaSarabia/imagenes-para-Flutter-6to-I-Fecha-11-Feb-2026/refs/heads/main/pkmncarta%202.jpg', // URL directa
          ),
          _crearTarjeta(
            'Héroe Elemental',
            'Colección Jaden Yuki',
            'https://raw.githubusercontent.com/VillaSarabia/imagenes-para-Flutter-6to-I-Fecha-11-Feb-2026/refs/heads/main/pkmncarta%203.jpg', // URL directa
          ),
          _crearTarjeta(
            'Stardust Dragon',
            'Colección Yusei Fudo',
            'https://raw.githubusercontent.com/VillaSarabia/imagenes-para-Flutter-6to-I-Fecha-11-Feb-2026/refs/heads/main/pkmcarta%204.png', // URL directa
          ),
        ],
      ),
    );
  }

  // Widget personalizado con el parámetro urlImagen añadido
  Widget _crearTarjeta(String titulo, String subtitulo, String urlImagen) {
    return Card(
      color: Colors.white,
      elevation: 5,
      margin: const EdgeInsets.only(bottom: 16.0),
      child: ListTile(
        leading: CircleAvatar(
          // Ahora usamos el parámetro urlImagen directamente aquí
          backgroundImage: NetworkImage(urlImagen),
        ),
        title: Text(
          titulo,
          style: const TextStyle(
            color: Colors.black,
            fontWeight: FontWeight.bold,
          ),
        ),
        subtitle: Text(
          subtitulo,
          style: const TextStyle(color: Colors.black54),
        ),
        trailing: const Icon(Icons.thumb_up, color: Colors.blue),
      ),
    );
  }
}
