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
    String nombre = data["nombre"];
    String edad = data["edad"];
    String user = data["user"];
    String clave = data["clave"];
    String id = data["id"];
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
