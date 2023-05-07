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
          ),
        ),
        //Cajas Texto y boton
        Column(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
          //textUser
          Container(
            width: 350,
            height: 80,
            margin: EdgeInsets.all(12),
            child: TextFormField(
              controller: controllerUser,
              textAlign: TextAlign.justify,
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 20,
                  fontStyle: FontStyle.italic),
              decoration: InputDecoration(
                  labelStyle: TextStyle(color: Color.fromARGB(255, 216, 185, 31)),
                  filled: true,
                  fillColor: Color.fromARGB(255, 193, 129, 50),
                  labelText: "Usuario",
                  prefixIcon: Image.network(
                    "https://ionian-olive-bc9.notion.site/image/https%3A%2F%2Fcdn.leonardo.ai%2Fusers%2F0360ce33-a7dc-440d-8b88-90b31b739e53%2Fgenerations%2F24e2ec22-4a9b-4587-98c0-f81648bca67a%2Fvariations%2FDefault_person_icon_login_947D5E_3F3A340C00000B0400_0_24e2ec22-4a9b-4587-98c0-f81648bca67a_0.png?id=bb15bd50-e795-4a06-8e03-ef2aabb3ebd1&table=block&spaceId=df53a026-b4a7-403c-a2e1-ea5405b9ddc8&width=380&userId=&cache=v2",
                    width: 12,
                  ),
                  focusedBorder: OutlineInputBorder( borderSide: BorderSide(color: Color.fromARGB(255, 251, 238, 49))),
                  suffixIcon: IconButton(
                    onPressed: () => controllerUser.clear(),
                    icon: Icon(Icons.clear_all_rounded),
                    color: Color.fromARGB(255, 251, 0, 0),
                  )),
            ),
          ),
          Container(
            width: 350,
            height: 80,
            margin: EdgeInsets.all(12),
            child: TextFormField(
              obscureText: true,
              obscuringCharacter: "*",
              controller: controllerClave,
              textAlign: TextAlign.justify,
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 20,
                  fontStyle: FontStyle.italic),
              decoration: InputDecoration(
                  labelStyle: TextStyle(color: Color.fromARGB(255, 216, 185, 31)),
                  focusedBorder: OutlineInputBorder(
                      borderSide:
                          BorderSide(color: Color.fromARGB(255, 251, 238, 49))),
                  filled: true,
                  fillColor: Color.fromARGB(255, 193, 129, 50),
                  labelText: "Clave",
                  prefixIcon: Image.network(
                    "https://ionian-olive-bc9.notion.site/image/https%3A%2F%2Fcdn.leonardo.ai%2Fusers%2F0360ce33-a7dc-440d-8b88-90b31b739e53%2Fgenerations%2Fa471d108-7316-4bda-b63f-949583a5050e%2Fvariations%2FDefault_padlock_icon_947D5E_3F3A340C00000B0400_0_a471d108-7316-4bda-b63f-949583a5050e_0.png?id=de39207d-9048-4fac-83b4-abd0302de98a&table=block&spaceId=df53a026-b4a7-403c-a2e1-ea5405b9ddc8&width=380&userId=&cache=v2",
                    width: 12,
                  ),
                  suffixIcon: IconButton(
                    onPressed: () => controllerClave.clear(),
                    icon: Icon(Icons.clear_all_rounded),
                    color: Color.fromARGB(255, 255, 0, 0),
                  )),
            ),
          ),

          Container(
            margin: EdgeInsets.all(14),
            width: 300,
            height: 40,
            child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                    shadowColor: Color.fromARGB(255, 240, 174, 42),
                    backgroundColor: Color.fromARGB(255, 65, 39, 34),
                    elevation: 14),
                onPressed: () {},
                child: Text(
                  "Entrar",
                  style: TextStyle(
                      color: Color.fromARGB(255, 255, 253, 253),
                      fontSize: 15,
                      fontStyle: FontStyle.italic),
                )),
          ),
          TextButton(onPressed: (){}, child: Text("ListaView",style: TextStyle(color: Colors.greenAccent),)),
          TextButton(onPressed: (){}, child: Text("Registrarse",style: TextStyle(color: Color.fromARGB(255, 181, 211, 197)),))
        ])
      ],
      //texto link para otras cosas
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
