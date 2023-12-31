import 'package:flutter/material.dart';
import 'package:flutter_application_1/ifood/ifood_inserir_pedido.dart';
import 'package:flutter_application_1/ifood/ifood_login.dart';
import 'package:flutter_application_1/ifood/ifood_busca.dart';
import 'package:flutter_application_1/ifood/ifood_inicio.dart';
import 'package:flutter_application_1/ifood/ifood_pedidos.dart';
import 'package:flutter_application_1/ifood/ifood_in.dart';

Map<String, WidgetBuilder> routes() {
  return {
    '/': (context) => const IfoodIn(),
    '/Login': (context) => const IfoodEntrada(),
    '/HomePage': (context) => const IfoodHomePage(),
    '/Busca': (context) => const IfoodBusca(),
    '/Pedidos': (context) => const IfoodPedidos(),
    '/InserirPedidos': (context) => const IfoodInserirPedido()
  };
}
