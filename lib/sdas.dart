import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        
        backgroundColor: Colors.white,
        flexibleSpace: Center(
          child: Container(
          
            alignment: Alignment.center,
            child: Image.asset(
              'assets/images/compras.jpg',
              height: 100, // Defina a altura desejada
              width: 100, // Defina a largura desejada
            ),
          ),
        ),
      ),
      body: Center(
        child: Text('Conteúdo da Página'),
      ),
    );
  }
}
