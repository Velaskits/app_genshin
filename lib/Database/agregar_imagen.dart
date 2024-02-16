import 'package:hive_flutter/hive_flutter.dart';

class BaseDeDatosAppGenchin {

  List listaImagenes = [];

  final boxImagenes = Hive.box("images");

  void guardarDatos(){
    boxImagenes.put(1, listaImagenes);
  }
}