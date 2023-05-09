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
  } else if (existe(user, clave) == true) {
    ingreso = true;
  } else {
    showMensaje(context, "EL Usuario no existe");
    ingreso = false;
  }

  return ingreso;
}

bool existe(String user, String clave) {
  var respuesta = false;
  Future<List<Usuario>> a = ListaUser();
  a.then((lista) {
    for (int i = 0; i <= lista.length; i++) {
      if (lista[i].user == user && lista[i].clave == clave) {
        respuesta = true;
      }
    }
  });
  return respuesta;
}

String categoria(String user, String clave) {
  var respuesta = "";
  Future<List<Usuario>> a = ListaUser();
  a.then((lista) {
    for (int i = 0; i <= lista.length; i++) {
      if (lista[i].user == user && lista[i].clave == clave) {
        respuesta = lista[i].tipo;
      }
    }
  });
  return respuesta;
}
