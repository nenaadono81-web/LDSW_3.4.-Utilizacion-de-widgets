
import 'package:flutter/material.dart';

void main() {
  runApp(const CineSanApp());
}

class CineSanApp extends StatelessWidget {
  const CineSanApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'CineSan',
      theme: ThemeData(
        primarySwatch: Colors.deepPurple,
      ),
      home: const HomeScreen(),
    );
  }
}

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'CineSan',
          style: TextStyle(
            fontWeight: FontWeight.bold,
          ),
        ),
        centerTitle: true,
        backgroundColor: Colors.deepPurple,
        foregroundColor: Colors.white,
      ),

      body: Stack(
        children: [
          // Imagen de fondo
          Positioned.fill(
            child: Image.asset(
              'assets/images/fondo_cine.jpg',
              fit: BoxFit.cover,
            ),
          ),

          // Capa oscura sobre la imagen
          Positioned.fill(
            child: Container(
              color: Colors.black.withValues(alpha: 0.65),
            ),
          ),

          // Contenido de bienvenida
          Center(
            child: Padding(
              padding: const EdgeInsets.all(20),

              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  // Icono relacionado con películas
                  const Icon(
                    Icons.movie_creation,
                    size: 90,
                    color: Colors.white,
                  ),

                  const SizedBox(height: 25),

                  // Mensaje de bienvenida
                  const Text(
                    '¡Bienvenido a CineSan!',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 28,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                  ),

                  const SizedBox(height: 25),

                  // Texto solicitado por el profesor
                  Container(
                    padding: const EdgeInsets.symmetric(
                      horizontal: 35,
                      vertical: 15,
                    ),
                    decoration: BoxDecoration(
                      color: Colors.deepPurple,
                      borderRadius: BorderRadius.circular(15),
                    ),
                    child: const Text(
                      'Hello World',
                      style: TextStyle(
                        fontSize: 25,
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                      ),
                    ),
                  ),

                  const SizedBox(height: 25),

                  const Text(
                    'Explora, disfruta y vive la magia del cine.',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 17,
                      color: Colors.white,
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}


