import 'package:app_genshin/Database/agregar_imagen.dart';
import 'package:app_genshin/Paginas/pagina_inicial.dart';
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
  TextEditingController urlController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Genshin Impact Personajes"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
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
            if (gi.listaImagenes.isNotEmpty)
              ListView.builder(
                itemCount: gi.listaImagenes.length,
                itemBuilder: (context, index) {
                  return personajesNuevos(
                    gi.listaImagenes[index],
                  );
                },
              ),
          ],
        ),
        TextField(
          controller: urlController,
          decoration: const InputDecoration(
            labelText: 'URL de la imagen',
            hintText: 'Ingrese la URL de la imagen',
          ),
        ),
        const SizedBox(height: 100.0),
        TextButton(
          onPressed: () {
            if (urlController.text.isNotEmpty) {
              accionGuardar(urlController.text);
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) =>
                      const PaginaInicial(),
                ),
              );
            } else {
              ScaffoldMessenger.of(context).showSnackBar(
                const SnackBar(
                  content: Text('Por favor, ingrese una URL válida.'),
                ),
              );
            }
          },
          child: Text('Guardar'),
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

  Widget personajesNuevos(String imagePath) {
    return Image.network(
      imagePath,
      width: 800,
      height: 800,
    );
  }

  void accionGuardar(String url) {
    setState(() {
      gi.listaImagenes.add(url);
    });
    gi.guardarDatos();
  }
}
