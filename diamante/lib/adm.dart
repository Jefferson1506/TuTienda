// ignore_for_file: sort_child_properties_last, prefer_const_constructors

import 'package:diamante/agregarProductos.dart';
import 'package:diamante/utilidades.dart';
import 'package:flutter/material.dart';

class PrincipalLogin extends StatelessWidget {
  const PrincipalLogin({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Text(""),
        backgroundColor: Color.fromARGB(255, 63, 32, 1),
        title: const Text(
          "Administracion App",
          style: TextStyle(
              color: Color.fromARGB(255, 108, 249, 176),
              fontSize: 25,
              fontStyle: FontStyle.italic),
        ),
        centerTitle: true,
        toolbarHeight: 70,
        shadowColor: Colors.amber,
        elevation: 30,
      ),
      body: Stack(
        children: [
          Positioned.fill(
            child: Image.network(
              "https://ionian-olive-bc9.notion.site/image/https%3A%2F%2Fs3-us-west-2.amazonaws.com%2Fsecure.notion-static.com%2F418ecdbb-4238-4c89-b5d3-6d0943374192%2Fwallpaperadmin.png?id=a4bfc862-6548-4e4b-a4f5-c3b08f9fef74&table=block&spaceId=df53a026-b4a7-403c-a2e1-ea5405b9ddc8&width=1320&userId=&cache=v2",
              fit: BoxFit.cover,
            ),
          ),
          CuerpoAdm(context)
        ],
      ),
    );
  }
}

Widget CuerpoAdm(BuildContext context) {
  return ListView(
    children: [
      //agregar prodcutos
      Container(
          margin: EdgeInsets.all(30),
          width: 150,
          height: 150,
          child: IconButton(
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (_) => AdicionarArticulo()));
              },
              icon: Icon(
                Icons.abc,
                size: 0,
              )),
          decoration: BoxDecoration(
            image: DecorationImage(
                image: NetworkImage(
                    "https://ionian-olive-bc9.notion.site/image/https%3A%2F%2Fs3-us-west-2.amazonaws.com%2Fsecure.notion-static.com%2Faefb9ff0-fbb8-4bb2-8be5-78e5d08cf791%2FUntitled.png?id=0652c8b4-442d-4b91-90de-974c22a99004&table=block&spaceId=df53a026-b4a7-403c-a2e1-ea5405b9ddc8&width=860&userId=&cache=v2"),
                fit: BoxFit.contain),
          )),
          //lista de productos
      Container(
          margin: EdgeInsets.all(30),
          width: 150,
          height: 150,
          child: IconButton(
              onPressed: () {},
              icon: Icon(
                Icons.abc,
                size: 0,
              )),
          decoration: BoxDecoration(

            image: DecorationImage(
                image: NetworkImage(
                    "https://ionian-olive-bc9.notion.site/image/https%3A%2F%2Fs3-us-west-2.amazonaws.com%2Fsecure.notion-static.com%2F66160e94-c2cc-4b97-b2bc-9a90d17780b1%2FUntitled.png?id=e8e92294-e7bc-401d-9c58-7a0774da498b&table=block&spaceId=df53a026-b4a7-403c-a2e1-ea5405b9ddc8&width=2000&userId=&cache=v2")),
          )),
          //lista de cliente
      Container(
          margin: EdgeInsets.all(30),
          width: 150,
          height: 150,
          child: IconButton(
              onPressed: () {},
              icon: Icon(
                Icons.abc,
                size: 0,
              )),
          decoration: BoxDecoration(
            image: DecorationImage(
                image: NetworkImage(
                    "https://ionian-olive-bc9.notion.site/image/https%3A%2F%2Fs3-us-west-2.amazonaws.com%2Fsecure.notion-static.com%2F2844ab6a-1e76-4063-9660-b55cff3bb2a5%2FUntitled.png?id=6855b936-2d34-450b-8028-f7cbd9609c1a&table=block&spaceId=df53a026-b4a7-403c-a2e1-ea5405b9ddc8&width=2000&userId=&cache=v2")),
          )),
          //lista de facturas
      Container(
        margin: EdgeInsets.all(14),
        width: 350,
        height: 45,
        child: ElevatedButton(
            style: ElevatedButton.styleFrom(
                shadowColor: Color.fromARGB(255, 240, 98, 42),
                backgroundColor: Color.fromARGB(255, 65, 39, 34),
                elevation: 14,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.all(Radius.circular(20)))),
            onPressed: () {
              Navigator.pop(context);
 ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                content: const Text('Sesion Cerrada' '  Lindo Dia'),
              ));
    
            },
            child: Text(
              "Atras",
              style: TextStyle(
                  color: Color.fromARGB(255, 255, 253, 253),
                  fontSize: 15,
                  fontStyle: FontStyle.italic),
            )),
      )
    ],
  );
}

// "https://i.pinimg.com/originals/f4/49/7d/f4497d17dc3b610aa04cd39d8f0d9e2f.jpg"
