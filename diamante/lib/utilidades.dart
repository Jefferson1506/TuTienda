// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

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

showMensaje(BuildContext context,String body) {
  Widget okButton = TextButton(
    child: Text("OK"),
    onPressed: () => Navigator.pop(context),
  );
  showDialog(
    barrierColor: Color.fromARGB(143, 255, 193, 7),
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          icon: Image.network("https://ionian-olive-bc9.notion.site/image/https%3A%2F%2Fcdn.leonardo.ai%2Fusers%2F0360ce33-a7dc-440d-8b88-90b31b739e53%2Fgenerations%2F6515a8b0-8388-4f94-9fd3-9644012e1eed%2Fvariations%2FDefault_triangle_warning_button_icon_with_the_realistic_0_6515a8b0-8388-4f94-9fd3-9644012e1eed_0.png?id=9e81c7db-3ebd-4543-ac32-779afa0ea770&table=block&spaceId=df53a026-b4a7-403c-a2e1-ea5405b9ddc8&width=380&userId=&cache=v2",scale: 3,),
          title:Text("Mensaje De Alerta",textAlign:TextAlign.center,style: TextStyle(fontSize: 22, fontStyle: FontStyle.italic),),
          content: Text(body.toString(),textAlign:TextAlign.justify,style: TextStyle(fontSize: 15, fontStyle: FontStyle.italic),),
          actions: [
            okButton,
          ],
        );
      });
}
