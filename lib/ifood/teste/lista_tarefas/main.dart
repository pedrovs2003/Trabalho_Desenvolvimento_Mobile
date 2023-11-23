import 'package:flex_color_scheme/flex_color_scheme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_1/ifood/teste/lista_tarefas/home_page.dart';

// *******************************************
//
// Lista Tarefas - toDo List
//
// ********************************************

// ATENÇÃO: Incluir no arquivo: pubspec.yaml
// em dependencies:
//   flex_color_scheme: ^7.0.0

main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: FlexThemeData.light(scheme: FlexScheme.indigo),
      darkTheme: FlexThemeData.dark(scheme: FlexScheme.amber),
      themeMode: ThemeMode.light,
      home: const HomePage(),
    );
  }
}
