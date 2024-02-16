import 'package:flutter/material.dart';
import 'package:app_genshin/Paginas/pagina_armas.dart';
import 'package:app_genshin/Paginas/pagina_personajes.dart';

class PaginaInicial extends StatelessWidget {
  const PaginaInicial({super.key});

  @override
  Widget build(BuildContext context) {
    final List<Map<String, dynamic>> imageList = [
      {"id": 1, "imagePath": 'assets/Elementos/Pyro.png'},
      {"id": 2, "imagePath": 'assets/Elementos/Hydro.png'},
      {"id": 3, "imagePath": 'assets/Elementos/Geo.png'},
      {"id": 4, "imagePath": 'assets/Elementos/Electro.png'},
      {"id": 5, "imagePath": 'assets/Elementos/Dendro.png'},
      {"id": 6, "imagePath": 'assets/Elementos/Cryo.png'},
      {"id": 7, "imagePath": 'assets/Elementos/Anemo.png'},
      {"id": 8, "imagePath": 'assets/Armas/Arco.png'},
      {"id": 9, "imagePath": 'assets/Armas/EspadaLigera.png'},
      {"id": 10, "imagePath": 'assets/Armas/EspadaPesada.png'},
      {"id": 11, "imagePath": 'assets/Armas/Lanza.png'},
      {"id": 12, "imagePath": 'assets/Armas/Catalizador.png'},
    ];

    return Scaffold(
      appBar: AppBar(
        title: const Text("Genshin Impact Inicio"),
        
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              for (var item in imageList.sublist(0, 7))
                _buildElementos(context, item),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              for (var item in imageList.sublist(7, 12))
                _buildArmas(context, item),
            ],
          ),
        ],
      ),
    );
  }

  Widget _buildElementos(BuildContext context, Map<String, dynamic> item) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => pagina_personajes(selectedImageId: item["id"]),
          ),
        );
      },
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Image.asset(
          item["imagePath"],
          width: 200,
          height: 200,
        ),
      ),
    );
  }

  Widget _buildArmas(BuildContext context, Map<String, dynamic> item) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => pagina_armas(selectedImageId: item["id"]),
          ),
        );
      },
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Image.asset(
          item["imagePath"],
          width: 250,
          height: 250,
        ),
      ),
    );
  }
}
