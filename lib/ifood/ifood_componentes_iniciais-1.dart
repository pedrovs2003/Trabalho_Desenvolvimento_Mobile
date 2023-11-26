import 'package:flutter/material.dart';

Container componentesIniciais(String categoria, String imagem) {
  return Container(
    margin: const EdgeInsets.only(right: 30, left: 30, top: 30, bottom: 10),
    decoration: const BoxDecoration(
      color: Color.fromARGB(37, 110, 108, 108),
      borderRadius: BorderRadius.all(Radius.circular(10)),
    ),
    height: 80,
    width: 180,
    child: Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          padding: const EdgeInsets.all(15),
          child: Text(categoria),
        ),
        const SizedBox(
          width: 10,
        ),
        Column(
          children: [
            const SizedBox(
              height: 10,
            ),
            ClipRRect(
              borderRadius: BorderRadius.circular(15),
              child: Image.asset(
                imagem,
                width: 40,
                height: 40,
                fit: BoxFit.cover,
              ),
            )
          ],
        )
      ],
    ),
  );
}
