import 'package:flutter/material.dart';

Row itemPedido(String item, String descricao, dynamic botao) {
  return Row(
    mainAxisAlignment: MainAxisAlignment.center,
    children: [
      Container(
        height: 200,
        width: 450,
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
              // Ícone de hambúrguer
              const Positioned(
                top: 20,
                left: 20,
                child: Icon(
                  Icons.fastfood,
                  size: 24,
                  color: Colors.black,
                ),
              ),
              Positioned(
                top: 20,
                left: 70,
                child: Text(
                  item,
                  style: const TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),

              // Linha quase transparente abaixo do texto
              Positioned(
                top: 75, // Ajuste conforme necessário
                left: 70,
                right: 50,
                child: Container(
                  height: 1,
                  color: Colors.grey.withOpacity(0.5),
                ),
              ),

              Positioned(
                top: 140, // Ajuste conforme necessário
                left: 70,
                right: 50,
                child: Container(
                  height: 1,
                  color: Colors.grey.withOpacity(0.5),
                ),
              ),
              const Positioned(
                top: 158,
                right: 335,
                child: Text(
                  'Ajuda',
                  style: TextStyle(color: Colors.red),
                ),
              ),
              botao,
              // Ícone de seta para a direita
              const Positioned(
                top: 20,
                right: 10,
                child: Stack(
                  children: [
                    Icon(
                      Icons.add,
                      size: 24,
                      color: Colors.black,
                    ),
                  ],
                ),
              ),
              Positioned(
                top: 95,
                left: 70,
                child: Text(
                  descricao,
                  style: const TextStyle(
                    fontSize: 11,
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
