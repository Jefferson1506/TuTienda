// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

List listaImg() {
  List<String> lista = [];

  lista.add("");

  return lista;
}

Widget logo() {
  return CircleAvatar(
    radius: 55.0,
    backgroundColor: Color.fromARGB(255, 255, 182, 39),
    foregroundColor: Color.fromARGB(255, 1, 1, 1),
    child: CircleAvatar(
      radius: 50.0,
      foregroundColor: Color.fromARGB(255, 2, 2, 2),
      backgroundImage: NetworkImage(
          "https://ionian-olive-bc9.notion.site/image/https%3A%2F%2Fcdn.leonardo.ai%2Fusers%2F0360ce33-a7dc-440d-8b88-90b31b739e53%2Fgenerations%2F851cc387-03a3-480d-8ef7-9aca1c589a90%2FLeonardo_Creative_Diamond_logo_from_a_Shop_realistic_with_the_3.jpg?id=a97a30f8-0b40-4d20-b21b-3971fb228637&table=block&spaceId=df53a026-b4a7-403c-a2e1-ea5405b9ddc8&width=580&userId=&cache=v2"),
    ),
  );
}

//TextStyle(color: Colors.white, fontSize: 25, fontStyle: FontStyle.italic),
