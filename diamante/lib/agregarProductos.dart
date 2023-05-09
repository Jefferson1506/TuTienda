// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, sized_box_for_whitespace

import 'dart:io';
import 'package:flutter/material.dart';

class AdicionarArticulo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: '++ Articulos',
      debugShowCheckedModeBanner: false,
      home: Scaffold(
          appBar: AppBar(
            centerTitle: true,
            title: const Text(
              "Adiccionar Articulos",
              style: TextStyle(fontSize: 21, fontFamily: 'kawai'),
              textAlign: TextAlign.center,
            ),
            backgroundColor: Color.fromARGB(255, 247, 111, 57),
            //Iconobutto
          ),
          body: Container(
            padding: EdgeInsets.all(30),
            decoration: BoxDecoration(
                gradient: LinearGradient(
                    begin: Alignment.topCenter,
                    end: Alignment(0.0, 1.0),
                    colors: <Color>[
                      Color.fromARGB(255, 242, 157, 91),
                      Color.fromARGB(255, 255, 207, 188),
                      Color.fromARGB(255, 209, 161, 142),
                      Color.fromARGB(255, 98, 50, 32),
                    ],
                    tileMode: TileMode.repeated)),
            child: VistaArticulo(),
          )),
    );
  }
}

class VistaArticulo extends StatefulWidget {
  VistaArticulo({Key? key}) : super(key: key);

  @override
  State<VistaArticulo> createState() => _VistaArticuloState();
}

class _VistaArticuloState extends State<VistaArticulo> {
  String dropvalue = "Categoria del producto";
  final controlador1 = TextEditingController();
  final controlador2 = TextEditingController();
  final controlador3 = TextEditingController();
  final controlador4 = TextEditingController();

  void limpieza() {
    controlador1.clear();
    controlador2.clear();
    controlador3.clear();
    controlador4.clear();
  }

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        Container(
          padding: EdgeInsets.symmetric(vertical: 10.0),
        ),
        Container(
            height: 60,
            width: 80,
            margin: EdgeInsets.symmetric(vertical: 12),
            padding: EdgeInsets.symmetric(horizontal: 70),
            child: DropdownButton<String>(
                dropdownColor: Color.fromARGB(255, 255, 207, 188),
                isExpanded: true,
                items: <String>[
                  "Categoria del producto",
                  "Alimentos",
                  "Aseo Personal"
                      "Belleza"
                ].map<DropdownMenuItem<String>>((String value) {
                  return DropdownMenuItem<String>(
                    value: value,
                    child: Text(value),
                  );
                }).toList(),
                value: dropvalue,
                icon: Icon(Icons.energy_savings_leaf),
                elevation: 4,
                underline: Container(
                  height: 2,
                  color: Color.fromARGB(255, 124, 191, 209),
                ),
                onChanged: (newValue) {
                  setState(() {
                    dropvalue = newValue.toString();
                  });
                })),
        Container(
          width: 275,
          height: 80,
          margin: EdgeInsets.all(20),
          child: TextField(
            autofocus: false,
            controller: controlador1,
            cursorColor: Colors.black,
            style: TextStyle(color: Colors.black, fontSize: 20),
            textAlign: TextAlign.center,
            decoration: InputDecoration(
                prefixIcon: Icon(Icons.add_shopping_cart),
                filled: true,
                fillColor: Colors.white,
                helperText: "Nombre Producto",
                enabledBorder: UnderlineInputBorder(
                  borderSide: BorderSide(color: Colors.white),
                  borderRadius: BorderRadius.circular(20.7),
                ),
                focusedBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.white),
                  borderRadius: BorderRadius.circular(20.7),
                ),
                suffix: GestureDetector(
                  child: IconButton(
                    onPressed: () {
                      controlador1.clear();
                    },
                    icon: Icon(Icons.clear),
                    splashColor: Colors.purple[400],
                    color: Color.fromARGB(255, 115, 26, 8),
                  ),
                )),
          ),
        ),
        Container(
          width: 275,
          height: 80,
          margin: EdgeInsets.all(20),
          child: TextField(
            autofocus: false,
            controller: controlador2,
            cursorColor: Colors.black,
            style: TextStyle(color: Colors.black, fontSize: 20),
            textAlign: TextAlign.center,
            decoration: InputDecoration(
                prefixIcon: Icon(Icons.add),
                filled: true,
                fillColor: Colors.white,
                helperText: "Cantidad",
                enabledBorder: UnderlineInputBorder(
                  borderSide: BorderSide(color: Colors.white),
                  borderRadius: BorderRadius.circular(20.7),
                ),
                focusedBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.white),
                  borderRadius: BorderRadius.circular(20.7),
                ),
                suffix: GestureDetector(
                  child: IconButton(
                    onPressed: () {
                      controlador2.clear();
                    },
                    icon: Icon(Icons.clear),
                    splashColor: Colors.purple[400],
                    color: Color.fromARGB(255, 115, 26, 8),
                  ),
                )),
          ),
        ),
        Container(
          width: 275,
          height: 80,
          margin: EdgeInsets.all(20),
          child: TextField(
            autofocus: false,
            controller: controlador3,
            cursorColor: Colors.black,
            style: TextStyle(color: Colors.black, fontSize: 20),
            textAlign: TextAlign.center,
            decoration: InputDecoration(
                prefixIcon: Icon(Icons.add_a_photo_outlined),
                filled: true,
                fillColor: Colors.white,
                helperText: "Url Foto",
                enabledBorder: UnderlineInputBorder(
                  borderSide: BorderSide(color: Colors.white),
                  borderRadius: BorderRadius.circular(20.7),
                ),
                focusedBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.white),
                  borderRadius: BorderRadius.circular(20.7),
                ),
                suffix: GestureDetector(
                  child: IconButton(
                    onPressed: () {
                      controlador3.clear();
                    },
                    icon: Icon(Icons.clear),
                    splashColor: Colors.purple[400],
                    color: Color.fromARGB(255, 115, 26, 8),
                  ),
                )),
          ),
        ),
        Container(
          width: 275,
          height: 80,
          margin: EdgeInsets.all(20),
          child: TextField(
            autofocus: false,
            controller: controlador4,
            cursorColor: Colors.black,
            style: TextStyle(color: Colors.black, fontSize: 20),
            textAlign: TextAlign.center,
            decoration: InputDecoration(
                prefixIcon: Icon(Icons.money),
                filled: true,
                fillColor: Colors.white,
                helperText: "Precio",
                enabledBorder: UnderlineInputBorder(
                  borderSide: BorderSide(color: Colors.white),
                  borderRadius: BorderRadius.circular(20.7),
                ),
                focusedBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.white),
                  borderRadius: BorderRadius.circular(20.7),
                ),
                suffix: GestureDetector(
                  child: IconButton(
                    onPressed: () {
                      controlador4.clear();
                    },
                    icon: Icon(Icons.clear),
                    splashColor: Colors.purple[400],
                    color: Color.fromARGB(255, 115, 26, 8),
                  ),
                )),
          ),
        ),
        Container(
          height: 40,
          width: 90,
          margin: EdgeInsets.symmetric(vertical: 30),
          child: ElevatedButton(
              style: ElevatedButton.styleFrom(
                shadowColor: Color.fromARGB(255, 240, 174, 42),
                backgroundColor: Color.fromARGB(255, 17, 113, 84),
                elevation: 14,
              ),
              child: Text(
                "Agregar Producto",
                style: TextStyle(
                    fontSize: 20.0, color: Color.fromARGB(255, 255, 255, 255)),
              ),
              onPressed: () {}),
        ),
        Container(
          height: 40,
          width: 90,
          child: ElevatedButton(
              style: ElevatedButton.styleFrom(
                  shadowColor: Color.fromARGB(255, 240, 174, 42),
                  backgroundColor: Color.fromARGB(255, 154, 19, 87),
                  elevation: 14),
              child: Text(
                "Cancelar",
                style: TextStyle(
                    fontSize: 20.0, color: Color.fromARGB(255, 255, 255, 255)),
              ),
              onPressed: () => Navigator.pop(context)),
        )
      ],
    );
  }
}
