import 'package:flutter/material.dart';

Container publi(String imagem) {
  return Container(
    height: 160,
    width: 360,
    padding: const EdgeInsets.all(5),
    child: ClipRRect(
      borderRadius: BorderRadius.circular(15),
      child: Image.asset(
        imagem,
        fit: BoxFit.cover,
      ),
    ),
  );
}
