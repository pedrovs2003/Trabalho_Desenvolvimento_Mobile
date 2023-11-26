 import 'package:flutter/material.dart';

Padding DataPedido(String data) {
    return Padding(
      padding: const EdgeInsets.only(left: 15),
      child: Text(
        data,
        style: const TextStyle(
          fontSize: 15,
          fontWeight: FontWeight.bold,
        ),
      ),
    );
  }