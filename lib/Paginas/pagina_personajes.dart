import 'package:flutter/material.dart';

class pagina_personajes extends StatelessWidget {
  final int selectedImageId;

  const pagina_personajes({Key? key, required this.selectedImageId}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Genshin Impact Personajes"),
      ),
      body: Padding(
        padding: EdgeInsets.all(8.0),
        child: Container(
          width: MediaQuery.of(context).size.width,
          height: 800,
          child: ListView(
            scrollDirection: Axis.vertical,
            children: _buildRows(selectedImageId),
          ),
        ),
      ),
    );
  }

  List<Widget> _buildRows(int selectedImageId) {
    List<Widget> rows = [];

    // Define las imágenes según la ID seleccionada
    if (selectedImageId == 1) {
      rows.addAll([
        Row(
          children: [
            _personajes('assets/Personajes/Yoimiya.png'),
          ],
        ),
      ]);
    } else if (selectedImageId == 2){
        rows.addAll([
        Row(
          children: [
            _personajes('assets/Personajes/Furina.png'),
          ],
        ),
      ]);
    } else if (selectedImageId == 3){
      rows.addAll([
        Row(
          children: [
            _personajes('assets/Personajes/Nvaia.png'),
          ],
        ),
      ]);
    } else if (selectedImageId == 4){
      rows.addAll([
        Row(
          children: [
            _personajes('assets/Personajes/Shohun.png'),
          ],
        ),
      ]);
    } else if (selectedImageId == 5){
      rows.addAll([
        Row(
          children: [
            _personajes('assets/Personajes/Nahida.png'),
          ],
        ),
      ]);
    } else if (selectedImageId == 6){
      rows.addAll([
        Row(
          children: [
            _personajes('assets/Personajes/Ayaka.png'),
          ],
        ),
      ]);
    } else if (selectedImageId == 7){
      rows.addAll([
        Row(
          children: [
            _personajes('assets/Personajes/Xianyun.png'),
          ],
        ),
      ]);
    } else {
      // Si la ID no coincide con ninguna, puedes mostrar un mensaje o dejar la lista vacía
      rows.add(const Center(
        child: Text('No se encontraron personajes para la ID seleccionada'),
      ));
    }

    return rows;
  }

  Widget _personajes(String imagePath) {
    return Image.asset(
      imagePath,
      width: 500,
      height: 500,
    );
  }
}
