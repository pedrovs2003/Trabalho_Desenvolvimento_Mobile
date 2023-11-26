  import 'package:flutter/material.dart';

Container componente(String imagem, double height, double width) {
    return Container(
      height: height,
      width: width,
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage(imagem),
          fit: BoxFit.fill,
        ),
      ),
    );
  }

