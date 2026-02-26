import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

// --- PANTALLA 3: BIEN HECHO ---
class ResultScreen extends StatelessWidget {
  const ResultScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 10.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Stack(
                alignment: Alignment.center,
                children: [
                  const Center(
                    child: Text(
                      "¡Bien hecho!", 
                      style: TextStyle(color: Colors.white, fontSize: 26, fontWeight: FontWeight.bold)
                    )
                  ),
                  Positioned(
                    right: 0,
                    child: Transform.rotate(
                      angle: -0.5,
                      child: const Icon(Icons.celebration_rounded, color: Colors.white, size: 28),
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 10),
              const Center(
                child: Text(
                  "este es tu entrenamiento N.188", 
                  style: TextStyle(color: Colors.grey, fontSize: 14)
                )
              ),
              const SizedBox(height: 30),
              Center(
                child: Stack(
                  alignment: Alignment.center,
                  children: [
                    const Icon(Icons.workspace_premium, color: Color(0xFFFFD700), size: 90),
                    const Positioned(
                      top: 22, 
                      child: Text(
                        "PR", 
                        style: TextStyle(color: Colors.black, fontWeight: FontWeight.w900, fontSize: 20)
                      )
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 10),
              const Center(
                child: Text(
                  "784 kg", 
                  style: TextStyle(color: Colors.white, fontSize: 42, fontWeight: FontWeight.w900, letterSpacing: -1.5)
                )
              ),
              const SizedBox(height: 30),
              const Text(
                "Jalon al pecho\n(maquina)", 
                style: TextStyle(color: Colors.white, fontSize: 28, fontWeight: FontWeight.bold, height: 1.1)
              ),
              const SizedBox(height: 5),
              const Text(
                "mejor serie de volumen", 
                style: TextStyle(color: Colors.white70, fontSize: 16, fontWeight: FontWeight.normal)
              ),
              const SizedBox(height: 20),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      const Icon(Icons.change_history, color: Colors.white, size: 20),
                      const SizedBox(width: 8),
                      const Text("AURA", style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold, letterSpacing: 1.2)),
                    ],
                  ),
                  const Text("@empera", style: TextStyle(color: Colors.white, fontWeight: FontWeight.w300)),
                ],
              ),
              const SizedBox(height: 10),
              Row(
                children: [
                  _buildDot(isActive: true),
                  _buildDot(isActive: false),
                  _buildDot(isActive: false),
                  _buildDot(isActive: false),
                ],
              ),
              const SizedBox(height: 30),
              const Text("compartir rutina", style: TextStyle(color: Colors.white, fontSize: 14, fontWeight: FontWeight.bold)),
              const SizedBox(height: 10),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  _socialButton(FontAwesomeIcons.facebookF, const Color(0xFF1877F2)),
                  _socialButton(FontAwesomeIcons.instagram, const Color(0xFFE1306C)),
                  _socialButton(FontAwesomeIcons.whatsapp, const Color(0xFF25D366)),
                  _socialButton(FontAwesomeIcons.xTwitter, Colors.white),
                  _socialButton(FontAwesomeIcons.tiktok, const Color(0xFF00F2EA)),
                ],
              ),
              const Spacer(),
              SizedBox(
                width: double.infinity,
                height: 45,
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.pushNamedAndRemoveUntil(context, '/', (route) => false);
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.white, 
                    foregroundColor: Colors.black,
                    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
                    elevation: 0,
                  ),
                  child: const Text("ok", style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildDot({required bool isActive}) {
    return Container(
      margin: const EdgeInsets.only(right: 8),
      width: 10, height: 10,
      decoration: BoxDecoration(
        color: isActive ? Colors.white : Colors.white24,
        shape: BoxShape.circle,
      ),
    );
  }

  Widget _socialButton(IconData icon, Color color) {
    return Container(
      width: 45, height: 45,
      decoration: BoxDecoration(
        border: Border.all(color: Colors.white24),
        borderRadius: BorderRadius.circular(10),
        color: Colors.white10,
      ),
      child: Center(
        child: FaIcon(icon, color: color, size: 20),
      ),
    );
  }
}
