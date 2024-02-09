import 'package:flutter/material.dart';

class pagina_armas extends StatelessWidget {
  const pagina_armas({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Genshin Impact Armas"),
      ),
      body: Padding(
        padding: EdgeInsets.all(8.0),
        child: Container(
          width: MediaQuery.of(context).size.width,
          height: 800,
          child: ListView(
            scrollDirection: Axis.vertical,
            children: [
              Row(
                children: [
                  _personajes('assets/Armas/armas_de_dentro/AgitadorRelampago.png'),
                  _personajes('assets/Armas/armas_de_dentro/DoneteKokomi.png'),
                ],
              ),
              Row(
                children: [
                  _personajes('assets/Armas/armas_de_dentro/Homa.png'),
                  _personajes('assets/Armas/armas_de_dentro/Mistplitter.png'),
                ],
              ),
              Row(
                children: [
                  _personajes('assets/Armas/armas_de_dentro/Sentenciadora.png'),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _personajes(String imagePath) {
    return Image.asset(
      imagePath,
      width: 500,
      height: 500,
    );
  }
}
