
  import 'package:flutter/material.dart';

  void main() {
    runApp(const MyApp());
  }

  class MyApp extends StatelessWidget {
    const MyApp({super.key});

    @override
    Widget build(BuildContext context) {
      return MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Widgets Flutter',
        home: Scaffold(
          appBar: AppBar(
            title: const Text('Mis primeros Widgets'),
            centerTitle: true,
            backgroundColor: Colors.purple,
            foregroundColor: Colors.white,
          ),

          body: SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.all(20),

              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [

                  // PRESENTACION
                  const Center(
                    child: Column(
                      children: [
                        Text(
                          '¡Hola, Flutter!',
                          style: TextStyle(
                            fontSize: 28,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        SizedBox(height: 10),
                        Text(
                          'Conociendo los widgets básicos '
                              'para desarrollar aplicaciones móviles.',
                          textAlign: TextAlign.center,
                          style: TextStyle(fontSize: 16),
                        ),
                      ],
                    ),
                  ),

                  const SizedBox(height: 30),

                  // WIDGET TEXT
                  const Text(
                    '1. Widget Text',
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color: Colors.green,
                    ),
                  ),

                  const SizedBox(height: 8),

                  const Text(
                    'Permite mostrar textos en la pantalla, '
                        'como títulos, mensajes e información. '
                        'También se puede modificar su tamaño, '
                        'color y estilo.',
                    style: TextStyle(fontSize: 15),
                  ),

                  const SizedBox(height: 15),

                  const Center(
                    child: Text(
                      '¡Hola, mundo!',
                      style: TextStyle(
                        fontSize: 26,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),

                  const SizedBox(height: 30),

                  // WIDGET ROW
                  const Text(
                    '2. Widget Row',
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color: Colors.green,
                    ),
                  ),

                  const SizedBox(height: 8),

                  const Text(
                    'Organiza los elementos de manera horizontal, '
                        'colocándolos uno al lado del otro.',
                    style: TextStyle(fontSize: 15),
                  ),

                  const SizedBox(height: 15),

                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: const [
                      Icon(Icons.home, color: Colors.green, size: 35),
                      Icon(Icons.favorite, color: Colors.red, size: 35),
                      Icon(Icons.settings, color: Colors.blue, size: 35),
                    ],
                  ),

                  const SizedBox(height: 30),

                  // WIDGET COLUMN
                  const Text(
                    '3. Widget Column',
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color: Colors.green,
                    ),
                  ),

                  const SizedBox(height: 8),

                  const Text(
                    'Organiza los elementos verticalmente, '
                        'colocando uno debajo del otro.',
                    style: TextStyle(fontSize: 15),
                  ),

                  const SizedBox(height: 15),

                  Container(
                    width: double.infinity,
                    padding: const EdgeInsets.all(15),
                    decoration: BoxDecoration(
                      color: Colors.grey.shade100,
                      borderRadius: BorderRadius.circular(12),
                    ),
                    child: const Column(
                      children: [
                        Text('Primer elemento'),
                        SizedBox(height: 10),
                        Text('Segundo elemento'),
                        SizedBox(height: 10),
                        Text('Tercer elemento'),
                      ],
                    ),
                  ),

                  const SizedBox(height: 30),

                  // WIDGET STACK
                  const Text(
                    '4. Widget Stack',
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color: Colors.green,
                    ),
                  ),

                  const SizedBox(height: 8),

                  const Text(
                    'Permite colocar varios elementos en capas, '
                        'haciendo posible que unos aparezcan encima '
                        'de otros.',
                    style: TextStyle(fontSize: 15),
                  ),

                  const SizedBox(height: 15),

                  Center(
                    child: Stack(
                      alignment: Alignment.center,
                      children: [
                        Container(
                          width: 270,
                          height: 120,
                          decoration: BoxDecoration(
                            color: Colors.green,
                            borderRadius: BorderRadius.circular(15),
                          ),
                        ),

                        const Text(
                          'Texto sobre el recuadro',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    ),
                  ),

                  const SizedBox(height: 30),

                  // WIDGET CONTAINER
                  const Text(
                    '5. Widget Container',
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color: Colors.green,
                    ),
                  ),

                  const SizedBox(height: 8),

                  const Text(
                    'Funciona como un contenedor que permite '
                        'organizar y personalizar elementos mediante '
                        'colores, tamaños, bordes y espacios.',
                    style: TextStyle(fontSize: 15),
                  ),

                  const SizedBox(height: 15),

                  Container(
                    width: double.infinity,
                    padding: const EdgeInsets.all(20),
                    decoration: BoxDecoration(
                      color: Colors.green.shade100,
                      borderRadius: BorderRadius.circular(15),
                      border: Border.all(color: Colors.green),
                    ),
                    child: const Column(
                      children: [
                        Text(
                          'Mi contenedor',
                          style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        SizedBox(height: 8),
                        Text(
                          'Este recuadro utiliza color, '
                              'espaciado y bordes redondeados.',
                          textAlign: TextAlign.center,
                        ),
                      ],
                    ),
                  ),

                  const SizedBox(height: 30),

                  const Center(
                    child: Text(
                      'Luz Elena Sanchez Adoño',
                      style: TextStyle(
                        fontSize: 14,
                        color: Colors.grey,
                      ),
                    ),
                  ),

                  const SizedBox(height: 20),
                ],
              ),
            ),
          ),
        ),
      );
    }
  }

