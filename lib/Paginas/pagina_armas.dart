import 'package:flutter/material.dart';

class pagina_armas extends StatelessWidget {
  final int selectedImageId;

  const pagina_armas({Key? key, required this.selectedImageId})
      : super(key: key);

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

    if (selectedImageId == 8) {
      rows.addAll([
        Row(
          children: [
            _armas('assets/Armas/armas_de_dentro/AgitadorRelampago.png'),
          ],
        ),
      ]);
    } else if (selectedImageId == 9) {
      rows.addAll([
        Row(
          children: [
            _armas('assets/Armas/armas_de_dentro/Mistplitter.png'),
          ],
        ),
      ]);
    } else if (selectedImageId == 10) {
      rows.addAll([
        Row(
          children: [
            _armas('assets/Armas/armas_de_dentro/Sentenciadora.png'),
          ],
        ),
      ]);
    } else if (selectedImageId == 11) {
      rows.addAll([
        Row(
          children: [
            _armas('assets/Armas/armas_de_dentro/Homa.png'),
          ],
        ),
      ]);
    } else if (selectedImageId == 12) {
      rows.addAll([
        Row(
          children: [
            _armas('assets/Armas/armas_de_dentro/DoneteKokomi.png'),
          ],
        ),
      ]);
    } else {
      rows.add(const Center(
        child: Text('No se encontraron personajes para la ID seleccionada'),
      ));
    }

    return rows;
  }

  Widget _armas(String imagePath) {
    return Image.asset(
      imagePath,
      width: 800,
      height: 800,
    );
  }
}
