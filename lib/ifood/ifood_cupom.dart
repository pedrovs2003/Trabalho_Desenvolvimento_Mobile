import 'package:flutter/material.dart';

Container cupom(String imagem, String texto) {
  return Container(
    decoration: BoxDecoration(
        border: Border.all(color: Colors.grey, width: 1),
        borderRadius: BorderRadius.circular(10)),
    height: 100,
    width: 120,
    child: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Container(
          decoration: const BoxDecoration(
            borderRadius: BorderRadius.all(Radius.circular(10)),
          ),
          height: 45,
          width: 110,
          child: ClipRRect(
              borderRadius: BorderRadius.circular(15),
              child: Image.asset(imagem)),
        ),
        const SizedBox(
          height: 3,
        ),
        Container(
            decoration: const BoxDecoration(
              borderRadius: BorderRadius.all(Radius.circular(10)),
            ),
            height: 45,
            width: 110,
            child: Column(
              children: [
                const SizedBox(height: 5),
                Text(texto,
                    textAlign: TextAlign.center,
                    style: const TextStyle(fontSize: 10)),
              ],
            )),
      ],
    ),
  );
}
