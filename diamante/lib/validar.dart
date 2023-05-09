import 'package:diamante/utilidades.dart';
import 'package:flutter/material.dart';

bool validarIngreso(String user, String clave, BuildContext context) {
  bool ingreso =false;
  if (user.isEmpty && clave.isEmpty) {
    showMensaje(context, "Error..\n" "\nCampos vacios");
  } else if (user.isEmpty) {
    showMensaje(context, "Error..\n" "\nEl usuario se encuentra vacio");
  } else if (clave.isEmpty) {
    showMensaje(context, "Error..\n" "\nLa clave se encuentra vacio");
  } else if (user == "123" && clave == "123") {
    showMensaje(context, "Bienvenido Administrador");
    ingreso = true;
  } else {
    showMensaje(context, "EL Usuario no existe");
    ingreso = false;
  }

  return ingreso;
}
