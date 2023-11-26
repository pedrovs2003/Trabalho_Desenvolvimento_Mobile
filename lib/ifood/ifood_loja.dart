import 'package:flutter/material.dart';

import 'ifood_inserir_pedido.dart';

Row loja(BuildContext context, String imagemLoja, String nomeLoja,
    String clssificacao, String categoria, String distancia) {
  return Row(
    mainAxisAlignment: MainAxisAlignment.center,
    children: [
      Container(
        height: 150,
        width: 500,
        decoration: BoxDecoration(
          color: const Color.fromARGB(255, 255, 255, 255),
          borderRadius: BorderRadius.circular(10.0),
          boxShadow: [
            BoxShadow(
              color: const Color.fromARGB(255, 232, 231, 231).withOpacity(0.5),
              spreadRadius: 5,
              blurRadius: 7,
              offset: const Offset(0, 3),
            ),
          ],
          border: Border.all(
            color: const Color.fromARGB(255, 236, 237, 239),
            width: 2,
          ),
        ),
        child: ClipRRect(
          borderRadius: BorderRadius.circular(10.0),
          child: Stack(
            children: [
              //Container com imagem circular da loja
              Positioned(
                  left: 10,
                  top: 25,
                  child: Container(
                    height: 50,
                    width: 60,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      image: DecorationImage(
                        image: AssetImage(imagemLoja),
                        fit: BoxFit.fill,
                      ),
                    ),
                  )),
              // nome da loja
              Positioned(
                left: 80,
                top: 25,
                child: Text(
                  nomeLoja,
                  style: const TextStyle(
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              //icone de estrela
              const Positioned(
                left: 80,
                top: 50,
                child: Icon(Icons.star, size: 12, color: Colors.yellow),
              ),
              //Classicação
              Positioned(
                left: 95,
                top: 48,
                child: Text(
                  clssificacao,
                  style: const TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Colors.yellow,
                    fontSize: 12.0,
                  ),
                ),
              ),

              Positioned(
                left: 135,
                top: 45,
                child: Text(
                  categoria,
                  style: const TextStyle(),
                ),
              ),

              Positioned(
                left: 225,
                top: 46,
                child: Text(
                  distancia,
                  style: const TextStyle(
                    fontSize: 12.0,
                  ),
                ),
              ),
              //ícone de coração
              const Positioned(
                left: 450,
                top: 25,
                child: Icon(
                  Icons.favorite_border,
                  size: 20,
                ),
              ),
              // Linha transparente abaixo do texto
              Positioned(
                top: 100,
                left: 70,
                right: 50,
                child: Container(
                  height: 1,
                  color: Colors.grey.withOpacity(0.5),
                ),
              ),
              //Botão que acessa a loja
              Positioned(
                top: 110,
                left: 70,
                right: 50,
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const IfoodInserirPedido()),
                    );
                  },
                  style: ElevatedButton.styleFrom(),
                  child: const Text(
                    'Acessar Loja',
                    style: TextStyle(fontSize: 11),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    ],
  );
}
