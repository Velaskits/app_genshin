import 'package:app_genshin/Database/agregar_imagen.dart';
import 'package:flutter/material.dart';
import 'package:hive_flutter/adapters.dart';

class pagina_personajes extends StatefulWidget {

  final int selectedImageId;


  pagina_personajes({Key? key, required this.selectedImageId})
      : super(key: key);
  @override
  State<pagina_personajes> createState() => _pagina_personajesState();
}

class _pagina_personajesState extends State<pagina_personajes> {
  var box = Hive.openBox('images');
  BaseDeDatosAppGenchin gi = BaseDeDatosAppGenchin();
  TextEditingController _urlController = TextEditingController();

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
            children: _buildRows(widget.selectedImageId),
          ),
        ),
      ),
    );
  }

  List<Widget> _buildRows(int selectedImageId) {
    List<Widget> rows = [];

    if (selectedImageId == 1) {
      rows.addAll([
        Row(
          children: [
            _personajes('assets/Personajes/Yoimiya.png'),
            TextField(
              controller: _urlController,
              decoration: InputDecoration(
                labelText: 'URL de la imagen',
                hintText: 'Ingrese la URL de la imagen',
              ),
            ),
            SizedBox(height: 20.0),
            TextButton(
              onPressed: () {
                // Verificar si el TextField no está vacío
                if (_urlController.text.isNotEmpty) {
                  // Llamar a la función accionGuardar
                  accionGuardar(_urlController.text);
                } else {
                  // Mostrar un mensaje de advertencia si el TextField está vacío
                  ScaffoldMessenger.of(context).showSnackBar(
                    SnackBar(
                      content: Text('Por favor, ingrese una URL válida.'),
                    ),
                  );
                }
              },
              child: Text('Guardar'),
            ),
          ],
        ),
      ]);
    } else if (selectedImageId == 2) {
      rows.addAll([
        Row(
          children: [
            _personajes('assets/Personajes/Furina.png'),
          ],
        ),
      ]);
    } else if (selectedImageId == 3) {
      rows.addAll([
        Row(
          children: [
            _personajes('assets/Personajes/Navia.png'),
          ],
        ),
      ]);
    } else if (selectedImageId == 4) {
      rows.addAll([
        Row(
          children: [
            _personajes('assets/Personajes/Shogun.png'),
          ],
        ),
      ]);
    } else if (selectedImageId == 5) {
      rows.addAll([
        Row(
          children: [
            _personajes('assets/Personajes/Nahida.png'),
          ],
        ),
      ]);
    } else if (selectedImageId == 6) {
      rows.addAll([
        Row(
          children: [
            _personajes('assets/Personajes/Ayaka.png'),
          ],
        ),
      ]);
    } else if (selectedImageId == 7) {
      rows.addAll([
        Row(
          children: [
            _personajes('assets/Personajes/Xianyun.png'),
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

  Widget _personajes(String imagePath) {
    return Image.asset(
      imagePath,
      width: 800,
      height: 800,
    );
  }

  void accionGuardar(String url){
    setState(() {
      gi.listaImagenes.add(url);
    });
    gi.crgarDatos();
  }
}
