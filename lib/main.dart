import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

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

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  Map<String, dynamic>? pokemon;
  bool cargando = false;
  String? error;

  // Función para consultar datos desde Internet
  Future<void> consultarPokemon() async {
    setState(() {
      cargando = true;
      error = null;
      pokemon = null;
    });

    try {
      final respuesta = await http.get(
        Uri.parse('https://pokeapi.co/api/v2/pokemon/pikachu'),
      );

      if (respuesta.statusCode == 200) {
        setState(() {
          pokemon = jsonDecode(respuesta.body);
        });
      } else {
        setState(() {
          error = 'No se pudo obtener la información.';
        });
      }
    } catch (e) {
      setState(() {
        error = 'Error de conexión. Revisa tu Internet.';
      });
    } finally {
      setState(() {
        cargando = false;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'CineSan',
          style: TextStyle(fontWeight: FontWeight.bold),
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

          // Capa oscura
          Positioned.fill(
            child: Container(
              color: Colors.black.withValues(alpha: 0.75),
            ),
          ),

          // Contenido principal
          Center(
            child: SingleChildScrollView(
              padding: const EdgeInsets.all(20),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Icon(
                    Icons.movie_creation,
                    size: 75,
                    color: Colors.white,
                  ),

                  const SizedBox(height: 15),

                  const Text(
                    '¡Bienvenido a CineSan!',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 27,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                  ),

                  const SizedBox(height: 15),

                  const Text(
                    'Hello World',
                    style: TextStyle(
                      fontSize: 25,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                  ),

                  const SizedBox(height: 15),

                  const Text(
                    'Explora, disfruta y vive la magia del cine.',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 16,
                      color: Colors.white,
                    ),
                  ),

                  const SizedBox(height: 30),

                  const Text(
                    'Consulta de información desde Internet',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 19,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                  ),

                  const SizedBox(height: 15),

                  ElevatedButton.icon(
                    onPressed: cargando ? null : consultarPokemon,
                    icon: const Icon(Icons.cloud_download),
                    label: const Text('Consultar Pokémon'),
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.deepPurple,
                      foregroundColor: Colors.white,
                    ),
                  ),

                  const SizedBox(height: 20),

                  if (cargando)
                    const CircularProgressIndicator(
                      color: Colors.white,
                    ),

                  if (error != null)
                    Text(
                      error!,
                      textAlign: TextAlign.center,
                      style: const TextStyle(
                        color: Colors.redAccent,
                        fontSize: 16,
                      ),
                    ),

                  if (pokemon != null) ...[
                    Card(
                      child: Padding(
                        padding: const EdgeInsets.all(15),
                        child: Column(
                          children: [
                            Image.network(
                              pokemon!['sprites']['front_default'],
                              height: 120,
                              errorBuilder: (context, error, stackTrace) {
                                return const Text(
                                  'No se pudo cargar la imagen',
                                );
                              },
                            ),

                            Text(
                              pokemon!['name'].toString().toUpperCase(),
                              style: const TextStyle(
                                fontSize: 22,
                                fontWeight: FontWeight.bold,
                              ),
                            ),

                            Text(
                              'Número: ${pokemon!['id']}',
                              style: const TextStyle(fontSize: 16),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}



