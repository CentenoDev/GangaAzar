import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ResultScreen extends StatelessWidget {
  final String selectedBiker;

  const ResultScreen(this.selectedBiker, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Resultado',
          style: GoogleFonts
              .playfairDisplay(), // Cambia 'honk' por el nombre de la fuente que deseas utilizar
        ),
        backgroundColor: Colors.black,
        foregroundColor: Colors.red,
      ),
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/fondo1.jpg'),
            fit: BoxFit.cover,
          ),
        ),
        child: Center(
          child: Container(
            color: Colors.black.withOpacity(0.8),
            padding: const EdgeInsets.all(16.0),
            child: Text(
              'La victima de hoy fue:\n$selectedBiker',
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
                color: Colors.red,
                fontFamily: GoogleFonts.playfairDisplay()
                    .fontFamily, // Asegúrate de usar la misma fuente aquí
              ),
              textAlign: TextAlign.center,
            ),
          ),
        ),
      ),
    );
  }
}
