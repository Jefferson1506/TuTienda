// ignore_for_file: file_names, unused_local_variable, prefer_final_fields
import 'dart:ffi';
import 'package:flutter/material.dart';

class Producto {
  String nombre = "";
  String categoria = "";
  int precio = 0;
  String foto = "";
  List<Producto> listProducto = [];

  List<Producto> llenar() {
    Producto producto = Producto();
    producto.nombre = "Cafe Aguila Roja";
    producto.categoria = "Alimento";
    producto.foto =
        "https://www.fridapets.com.mx/blog/wp-content/uploads/2021/10/disfraz-de-chucky-para-perro.jpg";
    Producto producto1 = Producto();
    producto1.nombre = "Harina Pan";
    producto1.categoria = "";
    producto1.foto =
        "https://cancitos.com/wp-content/uploads/2014/10/Disfraces-para-perros-en-halloween-11.jpg";

    Producto producto2 = Producto();
    producto2.nombre = " Articulo :Comida Dog Chow  \n                    ";
    producto2.categoria =
        "\n Comida para perro adulto \n Tu perro lo agradecera";
    producto2.foto =
        "https://www.agrocampo.com.co/media/catalog/product/cache/d51e0dc10c379a6229d70d752fc46d83/1/1/111100671_ed-min.jpg";

    Producto producto3 = Producto();
    producto3.nombre = " Articulo :Juguete laser\n                    ";
    producto3.categoria =
        "\n Un excelente producto para tu gato \n porque jugar con el\n si el solo puedeo";
    producto3.foto =
        "https://cdn.computerhoy.com/sites/navi.axelspringer.es/public/styles/480/public/media/image/2020/07/laser-gatos-2013809.jpg?itok=ZS0J4G_6";

    Producto producto4 = Producto();
    producto4.nombre =
        " Servicio :Limpienza de tu mascota\n                    ";
    producto4.categoria =
        "\n Si no tienes tiempo \n tu mascota la trataremos \n como un rey";
    producto4.foto =
        "https://soyunperro.com/wp-content/uploads/2015/03/perro-mojado-en-la-banera.jpg";

    Producto producto5 = new Producto();
    producto5.nombre = " Servicio :Hotel para mascota\n                    ";
    producto5.categoria =
        "\nDifruta tus vaciones \nNosotros cuidamos a\n tu mascota";
    producto5.foto =
        "https://estaticos-cdn.elperiodico.com/clip/733e2ecf-f8c1-4c8e-ac05-e7ecba3fdc77_alta-libre-aspect-ratio_default_0.jpg";

    listProducto.addAll([producto, producto1, producto2]);
    return listProducto;
  }
}
