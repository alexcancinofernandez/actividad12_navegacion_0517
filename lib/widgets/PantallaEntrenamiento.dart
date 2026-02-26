import 'package:flutter/material.dart';

// --- PANTALLA 2: AJUSTES DE ENTRENAMIENTO ---
class PantallaEntrenamiento extends StatelessWidget {
  const PantallaEntrenamiento({super.key});

  // These color definitions were originally instance fields without initialization
  // in the constructor, which is invalid for a StatelessWidget.
  // By making them static const, they become class-level constants,
  // accessible throughout the class and its helper methods via the class name (e.g., PantallaEntrenamiento.fondo).
  static const Color fondo = Color(0xFFFFF0F5);
  static const Color textoPrincipal = Color(0xFF121212);
  static const Color textoSecundario = Color(0xFF6A1B9A);
  static const Color colorBoton = Color(0xFF6A1B9A);
  static const Color textoBoton = Colors.white;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: PantallaEntrenamiento.fondo, // Access static const via class name
      body: SafeArea(
        child: SingleChildScrollView(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  IconButton(
                    icon: Icon(Icons.arrow_back, color: PantallaEntrenamiento.colorBoton, size: 28), // Access static const
                    // ✅ ACTUALIZACIÓN: Regresa a la pantalla 1
                    onPressed: () {
                      Navigator.pop(context);
                    },
                  ),
                  ElevatedButton(
                    // ✅ ACTUALIZACIÓN: Avanza a la pantalla 3
                    onPressed: () {
                      // Using named routes, so ensure '/tercera_pantalla' is defined in MaterialApp
                      Navigator.pushNamed(context, '/tercera_pantalla');
                    },
                    style: ElevatedButton.styleFrom(
                      backgroundColor: PantallaEntrenamiento.colorBoton, // Access static const
                      foregroundColor: PantallaEntrenamiento.textoBoton, // Access static const
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                    ),
                    child: const Text(
                      'Guardar',
                      style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 20),
              Text('Pull', style: TextStyle(color: PantallaEntrenamiento.textoPrincipal, fontSize: 36, fontWeight: FontWeight.bold)), // Access static const
              const SizedBox(height: 24),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  // Helper methods can now directly access the static const colors.
                  _columnaEstadisticas('Duración', '18min'),
                  _columnaEstadisticas('Volumen', '2,116kg'),
                  _columnaEstadisticas('Series', '3'),
                ],
              ),
              const SizedBox(height: 30),
              Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  ClipRRect(
                    borderRadius: BorderRadius.circular(12),
                    child: Image.network(
                      'https://raw.githubusercontent.com/alexcancinofernandez/act12_Navegacion_0517_3/refs/heads/main/gym.jpg',
                      width: 100, height: 120, fit: BoxFit.cover,
                    ),
                  ),
                  const SizedBox(width: 20),
                  Expanded(
                    child: ElevatedButton(
                      onPressed: () {},
                      style: ElevatedButton.styleFrom(
                        backgroundColor: PantallaEntrenamiento.colorBoton, // Access static const
                        foregroundColor: PantallaEntrenamiento.textoBoton, // Access static const
                        padding: const EdgeInsets.symmetric(vertical: 14),
                        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
                      ),
                      child: const Text('Agregar foto/video', textAlign: TextAlign.center, style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold)),
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 30),
              Text('Descripción:', style: TextStyle(color: PantallaEntrenamiento.textoPrincipal, fontSize: 20, fontWeight: FontWeight.bold)), // Access static const
              const SizedBox(height: 12),
              Text('¿Cómo ha ido tu entrenamiento?', style: TextStyle(color: PantallaEntrenamiento.textoSecundario, fontSize: 16, fontWeight: FontWeight.w500)), // Access static const
              const SizedBox(height: 12),
              Container(
                width: double.infinity,
                padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 20),
                decoration: BoxDecoration(
                  color: PantallaEntrenamiento.colorBoton.withAlpha(15), // Access static const
                  borderRadius: BorderRadius.circular(10),
                  border: Border.all(color: PantallaEntrenamiento.colorBoton.withAlpha(80)), // Access static const
                ),
                child: Text('deja algunas notas aqui...', style: TextStyle(color: PantallaEntrenamiento.textoSecundario, fontStyle: FontStyle.italic)), // Access static const
              ),
              const SizedBox(height: 30),
              _filaBotonOpciones(textoIzquierdo: 'Visibilidad', botonTextContent: 'Todo el mundo >'),
              const SizedBox(height: 20),
              _filaBotonOpciones(textoIzquierdo: 'Ajustes de rutina', botonTextContent: '>'),
              const SizedBox(height: 50),
              Center(
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.pushNamedAndRemoveUntil(context, '/', (route) => false);
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: PantallaEntrenamiento.colorBoton, // Access static const
                    foregroundColor: PantallaEntrenamiento.textoBoton, // Access static const
                    padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 14),
                    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
                  ),
                  child: const Text('Descartar entreno', style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold)),
                ),
              ),
              const SizedBox(height: 20),
            ],
          ),
        ),
      ),
    );
  }

  // --- WIDGETS AUXILIARES DE LA PANTALLA 2 ---
  Widget _columnaEstadisticas(String titulo, String valor) {
    // Helper methods can now directly access the static const colors.
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(titulo, style: TextStyle(color: PantallaEntrenamiento.textoSecundario, fontSize: 15, fontWeight: FontWeight.bold)), // Access static const
        const SizedBox(height: 6),
        Text(valor, style: TextStyle(color: PantallaEntrenamiento.textoPrincipal, fontSize: 24, fontWeight: FontWeight.bold)), // Access static const
      ],
    );
  }

  Widget _filaBotonOpciones({required String textoIzquierdo, required String botonTextContent}) {
    // Helper methods can now directly access the static const colors.
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(textoIzquierdo, style: TextStyle(color: PantallaEntrenamiento.textoPrincipal, fontSize: 18, fontWeight: FontWeight.w500)), // Access static const
        ElevatedButton(
          onPressed: () {},
          style: ElevatedButton.styleFrom(
            backgroundColor: PantallaEntrenamiento.colorBoton, // Access static const
            foregroundColor: PantallaEntrenamiento.textoBoton, // Access static const
            shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
          ),
          child: Text(botonTextContent, style: const TextStyle(fontSize: 16, fontWeight: FontWeight.bold)),
        ),
      ],
    );
  }
}
