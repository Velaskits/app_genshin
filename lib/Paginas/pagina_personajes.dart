import 'package:flutter/material.dart';

class PaginaInicial extends StatelessWidget {
  const PaginaInicial({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Genshin Impact Personajes"),
      ),
      body: Padding(
        padding: EdgeInsets.all(8.0),
        child: Container(
          width: MediaQuery.of(context).size.width, // Ancho máximo disponible
          height: 800, // Altura deseada
          child: ListView(
            scrollDirection: Axis.vertical,
            children: [
              Row(
                children: [
                  _buildImage('assets/Yoimiya.png'),
                  _buildImage('assets/HoTao.png'),
                ],
              ),
              Row(
                children: [

                  _buildImage('assets/Nahida.png'),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildImage(String imagePath) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Image.asset(
        imagePath,
        width: 500, // Tamaño ajustable según sea necesario
        height: 500,
      ),
    );
  }
}
