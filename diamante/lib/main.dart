// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:diamante/listaProductos.dart';
import 'package:diamante/utilidades.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Tu Tiendita',
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: Stack(
          children: [
            Positioned.fill(
              child: Image.network(
                "https://img.freepik.com/vector-gratis/fondo-hexagonal-oscuro-color-degradado_79603-1410.jpg",
                fit: BoxFit.cover,
              ),
            ),
            Login()
          ],
        ),
      ),
    );
  }
}

class Login extends StatelessWidget {
  Login({super.key});
  final controllerUser = TextEditingController();
  final controllerClave = TextEditingController();

  void limpieza() {
    controllerUser.clear();
    controllerClave.clear();
  }

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        //img
        Container(
          alignment: Alignment.topCenter,
          padding: EdgeInsets.all(20),
          child: logo(),
        )
        //texto
        ,
        Container(
          alignment: Alignment.topLeft,
          padding: EdgeInsets.all(20),
          child: Text(
            "Ingreso Al App",
            style: TextStyle(
                color: Colors.white, fontSize: 25, fontStyle: FontStyle.italic),
          ),),
          //Cajas Texto y boton
      Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: 
        [
          
          
        ]
        ,)
          
          

          //texto link para otras cosas
      ],
    );
  }
}

class CuerpoVenta extends StatelessWidget {
  const CuerpoVenta({super.key});

  @override
  Widget build(BuildContext context) {
    Producto producto = Producto();
    List<Producto> listaP = producto.listProducto;
    return Center(
      child: IconButton(
        icon: Icon(Icons.abc),
        onPressed: () {
          producto.llenar();
          print(listaP[0].nombre + "    " + listaP[2].precio.toString());
        },
      ),
    );
  }
}
