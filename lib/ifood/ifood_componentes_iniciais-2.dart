import 'package:flutter/material.dart';

Container componentesIniciais2(String categoria, String imagem) {
  return Container(
    margin: const EdgeInsets.only(left: 30, right: 10, top: 0),
    decoration: const BoxDecoration(
      color: Color.fromARGB(37, 110, 108, 108),
      borderRadius: BorderRadius.all(Radius.circular(10)),
    ),
    height: 80,
    width: 85,
    padding: const EdgeInsets.all(10),
    child: Column(
      children: [
        Text(categoria),
        const SizedBox(
          height: 5,
        ),
        ClipRRect(
          borderRadius: BorderRadius.circular(15),
          child: Image.asset(
            imagem,
            width: 35,
            height: 35,
            fit: BoxFit.cover,
          ),
        )
      ],
    ),
  );
}
