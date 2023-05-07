import 'package:diamante/listaProductos.dart';
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
      title: 'Flutter Demo',
      home: Scaffold(
        appBar: AppBar(),
        body: CuerpoVenta(),
      ),
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
          print(listaP[0].nombre+"    "+listaP[2].precio.toString());
        },
      ),
    );
  }
}
