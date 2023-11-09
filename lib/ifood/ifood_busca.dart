import 'package:flutter/material.dart';

class Busca extends StatelessWidget {
  const Busca({Key? key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 255, 255, 255),
      // appBar: AppBar(
      //   backgroundColor: const Color.fromARGB(255, 255, 255, 255),
      //   title: const Text(
      //     'Catálogo de Filmes',
      //     style: TextStyle(fontFamily: 'Montserrat', color: Colors.red),
      //   ),
      //   centerTitle: true,
      // ),
      body: ListView(
        children: [
          
          Container(height: 25,),

          Center(
  child: Container(
    height: 65,
    width: 550, // Ajuste o valor conforme necessário
    decoration: BoxDecoration(
      color: const Color.fromARGB(255, 244, 244, 244), // Alterado para cinza
      borderRadius: BorderRadius.circular(5.0),
    ),
    child: const Row(
      crossAxisAlignment: CrossAxisAlignment.center, // Centraliza verticalmente
      children: [
        Padding(
          padding: EdgeInsets.only(left: 16.0), // Aumenta o espaçamento
          child: Icon(
            Icons.search,
            color: Color.fromARGB(255, 237, 8, 8), // Cor do ícone
          ),
        ),
        SizedBox(width: 16.0), // Adiciona um espaço entre o ícone e o texto
        Text(
          "Buscar em Todo iFood",
          style: TextStyle(
            color: Color.fromARGB(255, 0, 0, 0), // Cor do texto
          ),
        ),
      ],
    ),
  ),
),


          Container(height: 25,),
          Container(
            padding:
                EdgeInsets.only(left: 55.0), // Adiciona espaçamento à esquerda
            child: const Text(
              'Categorias',
              style: TextStyle(
                fontSize: 25.0, // Ajusta o tamanho da fonte
                fontWeight: FontWeight.bold, // Adiciona negrito se desejar
              ),
            ),
          ),
          categoria(context, 'assets/images/flutter.png',
              "assets/images/flutter.png"),
          categoria(context, "assets/images/flutter.png",
              "assets/images/flutter.png"),
          categoria(context, "assets/images/flutter.png",
              "assets/images/flutter.png"),
          categoria(context, "assets/images/flutter.png",
              "assets/images/flutter.png"),
          categoria(context, "assets/images/flutter.png",
              "assets/images/flutter.png"),
          categoria(context, "assets/images/flutter.png",
              "assets/images/flutter.png"),
          categoria(context, "assets/images/flutter.png",
              "assets/images/flutter.png"),
          categoria(context, "assets/images/flutter.png",
              "assets/images/flutter.png"),
        ],
      ),
    );
  }

  //   'Bebidas',
  //   'Mercado',
  //   'Farmácia',
  //   'Pet',
  //   "Shopping",
  //   "Restaurante Super",
  //   "Gourmet",
  //   "Pizza",
  //   "Lanches",
  //   "Japonesa",
  //   "Brasileira",
  //   "Chinesa",
  //   "Saudável",
  //   "Crepes e Panquecas",

  Row categoria(BuildContext context, String imagem1, imagem2) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Row(
          children: [
            Container(
              height: 100,
              width: 235,
              decoration: BoxDecoration(
                color: Colors.yellow,
                borderRadius: BorderRadius.circular(
                    10.0), // Ajuste o raio conforme necessário
              ),
              child: Image.asset(
                imagem1,
                fit: BoxFit.fill,
              ),
            ),
            Container(
              height: 15,
              width: 15,
            ),
            Container(
              height: 100,
              width: 235,
              decoration: BoxDecoration(
                color: Colors.yellow,
                borderRadius: BorderRadius.circular(
                    10.0), // Ajuste o raio conforme necessário
              ),
              child: Image.asset(
                imagem1,
                fit: BoxFit.fill,
              ),
            )
          ],
        ),
        Container(
          height: 115,
          width: 15,
        ),
      ],
    );
  }
}
