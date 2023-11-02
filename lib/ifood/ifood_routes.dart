import 'package:flutter/material.dart';
import 'package:flutter_application_1/ifood/ifood.dart';
import 'package:flutter_application_1/ifood/ifood_inicio.dart';
import 'package:flutter_application_1/ifood/ifood_perfil_drawer.dart';


Map<String, WidgetBuilder> routes() {
  return {
    '/': (context) => const IfoodEntrada(),
    '/HomePage': (context) => const IfoodHomePage(),
    '/Perfil': (context) => const IfoodDrawer(),
  };
}
