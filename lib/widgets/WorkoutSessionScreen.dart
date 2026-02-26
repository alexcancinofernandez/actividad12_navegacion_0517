import 'package:flutter/material.dart';

// --- PANTALLA 1: WORKOUT SESSION ---
class WorkoutSessionScreen extends StatelessWidget { // [cite: 20]
  const WorkoutSessionScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF3E2723), // [cite: 26]
      body: SafeArea(
        child: SingleChildScrollView(
          padding: const EdgeInsets.all(16.0), // [cite: 29]
          child: Column(
            children: [
              // --- ENCABEZADO SUPERIOR ---
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween, // [cite: 34]
                children: [
                  Row(
                    children: const [
                      Icon(Icons.arrow_drop_down, color: Color(0xFFFFF3E0), size: 30), // [cite: 39]
                      SizedBox(width: 4),
                      Text(
                        "Entreno", // [cite: 42]
                        style: TextStyle(
                          color: Color(0xFFFFF3E0),
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      const Icon(Icons.timer_outlined, color: Color(0xFFFFF3E0), size: 24), // [cite: 54]
                      const SizedBox(width: 15),
                      SizedBox(
                        height: 35, // [cite: 57]
                        child: ElevatedButton(
                          // ✅ ACTUALIZACIÓN: Navega a la pantalla 2
                          onPressed: () { 
                            Navigator.pushNamed(context, '/segunda_pantalla');
                          }, // 
                          style: ElevatedButton.styleFrom(
                            backgroundColor: const Color(0xFFD84315), // [cite: 61]
                            foregroundColor: const Color(0xFFFFF3E0), // [cite: 62]
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(20), // [cite: 64]
                            ),
                            padding: const EdgeInsets.symmetric(horizontal: 20), // [cite: 66]
                          ),
                          child: const Text("Termina"), // 
                        ),
                      ),
                    ],
                  ),
                ],
              ),
              const SizedBox(height: 25), // [cite: 75]
              // --- ESTADÍSTICAS ---
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround, // [cite: 78]
                children: [
                  _buildStatColumn("Duracion", "5min 51 s"), // [cite: 80]
                  _buildStatColumn("Volumen", "1000kg"), // [cite: 81]
                  _buildStatColumn("Series", "16"), // [cite: 82]
                ],
              ),
              const SizedBox(height: 15),
              Divider(color: const Color(0xFFD84315).withAlpha(80), thickness: 1), // [cite: 87]
              const SizedBox(height: 20),
              // --- EJERCICIO 1 ---
              const ExerciseSection(
                exerciseName: "Jalon al pecho (Maquina)", // [cite: 91]
                imageUrl: "https://raw.githubusercontent.com/alexcancinofernandez/Auraapp2_ACF_0517/main/jalon.jpg", // [cite: 92]
                startWeight: 100, // [cite: 93]
              ),
              const SizedBox(height: 40),
              Divider(color: const Color(0xFFD84315).withAlpha(80), thickness: 1), // [cite: 96]
              const SizedBox(height: 20),
              // --- EJERCICIO 2 ---
              const ExerciseSection(
                exerciseName: "Remo sentado en Maquina", // [cite: 100]
                imageUrl: "https://raw.githubusercontent.com/alexcancinofernandez/Auraapp2_ACF_0517/main/remo.jpg", // [cite: 101]
                startWeight: 80, // [cite: 102]
              ),
              const SizedBox(height: 50),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildStatColumn(String title, String value) { // [cite: 112]
    return Column(
      children: [
        Text(title, style: const TextStyle(color: Color(0xFFBCAAA4), fontSize: 14)), // [cite: 115]
        const SizedBox(height: 5),
        Text(value, style: const TextStyle(color: Color(0xFFFFF3E0), fontSize: 18, fontWeight: FontWeight.bold)), // [cite: 117]
      ],
    );
  }
}

// (Widgets auxiliares de la Pantalla 1: ExerciseSection y ExerciseSetRow)
class ExerciseSection extends StatelessWidget { // [cite: 123]
  final String exerciseName;
  final String imageUrl;
  final double startWeight;

  const ExerciseSection({
    super.key,
    required this.exerciseName,
    required this.imageUrl,
    required this.startWeight,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start, // [cite: 136]
      children: [
        Row(
          children: [
            CircleAvatar(
              radius: 25, // [cite: 142]
              backgroundImage: NetworkImage(imageUrl), // [cite: 143]
              backgroundColor: const Color(0xFF5D4037), // [cite: 144]
            ),
            const SizedBox(width: 15),
            Expanded(
              child: Text(
                exerciseName, // [cite: 149]
                style: const TextStyle(color: Color(0xFFFFF3E0), fontSize: 18, fontWeight: FontWeight.bold),
              ),
            ),
            const Icon(Icons.more_vert, color: Color(0xFFFFF3E0)), // [cite: 153]
          ],
        ),
        const SizedBox(height: 10), // [cite: 156]
        const Padding(
          padding: EdgeInsets.only(left: 65.0), // [cite: 159]
          child: Text("agregar notas aqui ...", style: TextStyle(color: Color(0xFFBCAAA4), fontSize: 14)), // [cite: 160]
        ),
        const SizedBox(height: 15), // [cite: 162]
        Row(
          children: const [
            Icon(Icons.timer, color: Color(0xFFFFCC80), size: 20), // [cite: 166]
            SizedBox(width: 8),
            Text("Descanso: 2min 0s", style: TextStyle(color: Color(0xFFFFF3E0), fontWeight: FontWeight.bold)), // [cite: 168]
          ],
        ),
        const SizedBox(height: 15), // [cite: 171]
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 8.0), // [cite: 174]
          child: Row(
            children: [
              _headerText("serie", width: 40), // [cite: 177]
              _headerText("Anterior", flex: 2), // [cite: 178]
              Expanded(
                flex: 2, // [cite: 180]
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center, // [cite: 182]
                  children: const [
                    Icon(Icons.fitness_center, color: Color(0xFFBCAAA4), size: 14), // [cite: 184]
                    SizedBox(width: 4), // [cite: 185]
                    Text("kg", style: TextStyle(color: Color(0xFFBCAAA4), fontSize: 12)), // [cite: 186]
                  ],
                ),
              ),
              _headerText("Reps", flex: 2), // [cite: 190]
            ],
          ),
        ),
        const SizedBox(height: 10), // [cite: 194]
        ExerciseSetRow(index: 1, prev: "60kgX10", weight: startWeight, reps: 6), // [cite: 196]
        ExerciseSetRow(index: 2, prev: "65kgX10", weight: startWeight + 5, reps: 8), // [cite: 197]
        ExerciseSetRow(index: 3, prev: "70kgX8", weight: startWeight + 10, reps: 10), // [cite: 198]
        ExerciseSetRow(index: 4, prev: "75kgX6", weight: startWeight + 15, reps: 12), // [cite: 199]
        const SizedBox(height: 15), // [cite: 200]
        Center(
          child: SizedBox(
            width: double.infinity, // [cite: 204]
            height: 45, // [cite: 205]
            child: ElevatedButton(
              onPressed: () {}, // [cite: 207]
              style: ElevatedButton.styleFrom(
                backgroundColor: const Color(0xFFD84315), // [cite: 209]
                shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)), // [cite: 210]
              ),
              child: const Text("+ agregar serie", style: TextStyle(color: Color(0xFFFFF3E0), fontSize: 16)), // [cite: 212]
            ),
          ),
        ),
      ],
    );
  }

  Widget _headerText(String text, {double? width, int? flex}) { // [cite: 219]
    Widget child = Text(
      text, // [cite: 221]
      style: const TextStyle(color: Color(0xFFBCAAA4), fontSize: 12), // [cite: 222]
      textAlign: TextAlign.center, // [cite: 223]
    );
    if (width != null) return SizedBox(width: width, child: child); // [cite: 225]
    return Expanded(flex: flex ?? 1, child: child); // [cite: 226]
  }
}

class ExerciseSetRow extends StatefulWidget { // [cite: 230]
  final int index;
  final String prev;
  final double weight;
  final int reps;

  const ExerciseSetRow({
    super.key,
    required this.index,
    required this.prev,
    required this.weight,
    required this.reps,
  });

  @override
  State<ExerciseSetRow> createState() => _ExerciseSetRowState(); // [cite: 243]
}

class _ExerciseSetRowState extends State<ExerciseSetRow> { // [cite: 245]
  bool isCompleted = false; // [cite: 246]

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 4), // [cite: 250]
      padding: const EdgeInsets.symmetric(vertical: 8, horizontal: 8), // [cite: 251]
      decoration: BoxDecoration(
        color: isCompleted ? const Color(0xFFF57C00).withAlpha(40) : Colors.transparent, // [cite: 254]
        borderRadius: BorderRadius.circular(8), // [cite: 255]
      ),
      child: Row(
        children: [
          SizedBox(
            width: 40, // [cite: 261]
            child: Center(
              child: Container(
                width: 24, height: 24, // [cite: 264]
                decoration: const BoxDecoration(shape: BoxShape.circle, color: Color(0xFF4E342E)), // [cite: 265]
                child: Center(child: Text("${widget.index}", style: const TextStyle(color: Color(0xFFFFF3E0), fontSize: 12))), // [cite: 266]
              ),
            ),
          ),
          Expanded(
            flex: 2, // [cite: 272]
            child: Text(
              widget.prev, // [cite: 274]
              textAlign: TextAlign.center, // [cite: 275]
              style: const TextStyle(color: Color(0xFFBCAAA4), fontSize: 13), // [cite: 276]
            ),
          ),
          Expanded(
            flex: 2, // [cite: 281]
            child: Container(
              margin: const EdgeInsets.symmetric(horizontal: 4), // [cite: 283]
              height: 30, // [cite: 284]
              decoration: BoxDecoration(
                color: const Color(0xFF4E342E), // [cite: 286]
                borderRadius: BorderRadius.circular(4), // [cite: 287]
              ),
              child: Center(
                child: Text(
                  "${widget.weight.toInt()}", // [cite: 291]
                  style: const TextStyle(color: Color(0xFFFFF3E0), fontWeight: FontWeight.bold), // [cite: 292]
                ),
              ),
            ),
          ),
          Expanded(
            flex: 2, // [cite: 299]
            child: Row(
              children: [
                Expanded(
                  child: Container(
                    height: 30, // [cite: 304]
                    decoration: BoxDecoration(
                      color: const Color(0xFF4E342E), // [cite: 306]
                      borderRadius: BorderRadius.circular(4), // [cite: 307]
                    ),
                    child: Center(
                      child: Text("${widget.reps}", style: const TextStyle(color: Color(0xFFFFF3E0), fontWeight: FontWeight.bold)), // [cite: 310]
                    ),
                  ),
                ),
                const SizedBox(width: 8), // [cite: 314]
                GestureDetector(
                  onTap: () {
                    setState(() {
                      isCompleted = !isCompleted; // [cite: 319]
                    });
                  },
                  child: Container(
                    width: 30, // [cite: 323]
                    height: 30, // [cite: 324]
                    decoration: BoxDecoration(
                      color: isCompleted ? const Color(0xFFF57C00) : const Color(0xFF5D4037), // [cite: 327]
                      borderRadius: BorderRadius.circular(6), // [cite: 328]
                    ),
                    child: const Icon(Icons.check, color: Color(0xFFFFF3E0), size: 20), // [cite: 330]
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}