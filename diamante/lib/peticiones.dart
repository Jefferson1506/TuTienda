// ignore_for_file: non_constant_identifier_names

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:diamante/modelos.dart';

FirebaseFirestore db = FirebaseFirestore.instance;

Future<List<Usuario>> ListaUser() async {
  List<Usuario> lista = [];
  CollectionReference userC = db.collection("Clientes");
  QuerySnapshot querySnapshot = await userC.get();
  querySnapshot.docs.forEach((document) {
    Map<String, dynamic> data = document.data() as Map<String, dynamic>;
    String clave = data["clave"];
    String edad = data["edad"];
    String id = data["id"];
    String nombre = data["nombre"];

    String user = data["user"];

    String tipo = data["tipo"];
    Usuario usuario = Usuario(
        edad: edad,
        id: id,
        nombre: nombre,
        tipo: tipo,
        user: user,
        clave: clave);
    lista.add(usuario);
  });
  return lista;
}
