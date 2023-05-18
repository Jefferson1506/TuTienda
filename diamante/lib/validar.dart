 // ignore_for_file: unrelated_type_equality_checks

import 'dart:ffi';

import 'package:diamante/modelos.dart';
import 'package:diamante/utilidades.dart';
import 'package:flutter/material.dart';

import 'peticiones.dart';

bool validarIngreso(String user, String clave, BuildContext context) {
  bool ingreso = false;

  if (user.isEmpty && clave.isEmpty) {
    showMensaje(context, "Error..\n" "\nCampos vacios");
  } else if (user.isEmpty) {
    showMensaje(context, "Error..\n" "\nEl usuario se encuentra vacio");
  } else if (clave.isEmpty) {
    showMensaje(context, "Error..\n" "\nLa clave se encuentra vacio");
  } else if (user.isNotEmpty && clave.isNotEmpty) {
    ingreso = true;
  } 

  return ingreso;
}

Future existe(String user, String clave) async {
  var respuesta = false;
  Future<List<Usuario>> a = ListaUser();
  a.then((lista) {
    for (int i = 0; i < lista.length; i++) {
      if (lista[i].user.toString() == user &&
          lista[i].clave.toString() == clave) {
       
      }
    }
  });

  return respuesta;
}
