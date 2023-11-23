import 'package:flutter/material.dart';
import 'package:flutter_application_1/ifood/ifood_login.dart';
import 'package:flutter_application_1/ifood/ifood_telaEntrada.dart';
import 'ifood_inserir_pedido.dart';
import 'ifood_routes.dart';

main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
            colorScheme: ColorScheme.fromSeed(seedColor: Colors.blue),
            useMaterial3: true),
        routes: routes(),
        //home: InserirPedido(),
        );
  }
}
//Testando Git