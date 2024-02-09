import 'package:flutter/material.dart';

class PaginaInicial extends StatelessWidget {
  const PaginaInicial({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Genshin Impact info"),
      ),
      body: Padding(
        padding: EdgeInsets.all(8.0),
        child: Container(
          width: MediaQuery.of(context).size.width, // Ancho máximo disponible

          child: Center(
            child: ListView(
              scrollDirection: Axis.vertical,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.center, // Centra la fila horizontalmente
                  children: [
                    _buildImage('assets/Elementos/Pyro.png'),
                    _buildImage('assets/Elementos/Hydro.png'),
                    _buildImage('assets/Elementos/Geo.png'),
                    _buildImage('assets/Elementos/Electro.png'),
                    _buildImage('assets/Elementos/Dendro.png'),
                    _buildImage('assets/Elementos/Cryo.png'),
                    _buildImage('assets/Elementos/Anemo.png'),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center, // Centra la fila horizontalmente
                  children: [
                    _buildImage('assets/Elementos/Pyro.png'),
                    _buildImage('assets/Elementos/Hydro.png'),
                    _buildImage('assets/Elementos/Geo.png'),
                    _buildImage('assets/Elementos/Electro.png'),
                    _buildImage('assets/Elementos/Dendro.png'),
                  ],
                ),
              ],
            ),
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
        width: 250, // Tamaño ajustable según sea necesario
        height: 250,
      ),
    );
  }
}
