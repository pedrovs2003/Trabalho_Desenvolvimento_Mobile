import 'dart:convert';

import 'package:flutter/material.dart';

import 'ifood_data.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => Pedidos();
}

class Pedidos  extends State<HomePage> {
  Pedidos({Key? key});

  List _listaPedidos = [];
  ifood_data db = ifood_data();
  final _tarefaController = TextEditingController();
  Map<String, dynamic>? _ultimoItemRemovido;
  int? _posicaoUltimoItemRemovido;

  @override
  void initState() {
    super.initState();

    db.readData().then(
      (data) {
        setState(() {
          _listaPedidos = json.decode(data!);
          print(_listaPedidos);
        });
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4,
      child: Scaffold(
        backgroundColor: const Color.fromARGB(255, 255, 255, 255),
        body: Stack(
          children: [
            ListView(
              children: [
                const SizedBox(
                  height: 10,
                ),
                Container(
                  height: 25,
                ),
                Center(
                  child: Container(
                    // Adiciona espaçamento à esquerda
                    child: const Text(
                      'MEUS PEDIDOS',
                      style: TextStyle(
                        fontSize: 15, // Ajusta o tamanho da fonte
                        fontWeight:
                            FontWeight.bold, // Adiciona negrito se desejar
                      ),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 15,
                  width: 15,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      height: 115,
                      width: 450,
                      decoration: BoxDecoration(
                        color: const Color.fromARGB(255, 255, 255, 255),
                        borderRadius: BorderRadius.circular(10.0),
                        boxShadow: [
                          BoxShadow(
                            color: const Color.fromARGB(255, 232, 231, 231)
                                .withOpacity(0.5),
                            spreadRadius: 5,
                            blurRadius: 7,
                            offset: const Offset(0, 3),
                          ),
                        ],
                        border: Border.all(
                          color: const Color.fromARGB(255, 236, 237, 239),
                          width: 2,
                        ),
                      ),
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(10.0),
                        child: Stack(
                          children: [
                            // Texto 'Peça de novo'
                            const Positioned(
                              top: 10,
                              left: 10,
                              child: Text(
                                'Peça de novo',
                                style: TextStyle(
                                  fontSize: 16,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ),
                            // Texto '1 Cheddar Burguer + Fritas'
                            const Positioned(
                              top: 30,
                              left: 10,
                              child: Text(
                                '1 Cheddar Burguer + Fritas',
                                style: TextStyle(
                                  fontSize: 14,
                                ),
                              ),
                            ),
                            // Container na parte inferior
                            Align(
                              alignment: Alignment.bottomCenter,
                              child: Container(
                                margin: const EdgeInsets.only(
                                    bottom:
                                        15), // Ajuste a distância entre o Container vermelho e o bottom
                                height: 40,
                                width: 400,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(
                                      7.0), // Bordas arredondadas
                                  color: Colors.red,
                                ),
                                child: const Center(
                                  child: Text(
                                    'Adicionar à sacola',
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 13,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
                Container(
                  height: 30,
                ),
                //Container de cupom
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Center(
                      child: Container(
                        height: 40,
                        width: 445,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(7.0),
                          color: Color.fromARGB(255, 232, 173, 231),
                        ),
                        child: const Padding(
                          padding: EdgeInsets.only(
                              left: 35), // Ajuste o espaço conforme necessário
                          child: Row(
                            children: [
                              Icon(
                                Icons.diamond_sharp,
                                color: Colors.purple,
                                size: 16,
                              ), // Você pode usar o ícone de diamante ou substituir pelo de sua escolha
                              SizedBox(
                                  width:
                                      5), // Adiciona um espaço entre o ícone e o texto
                              Text(
                                '                 Cupons de até R\$ 10 off no Clube',
                                style: TextStyle(
                                  color: Colors.purple,
                                  fontSize: 13,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 25,
                ),

                const Padding(
                  padding: EdgeInsets.only(
                      left: 15), // Ajuste o valor conforme necessário
                  child: Text(
                    'Histórico\nSex, 04 agosto 2023',
                    style: TextStyle(
                      fontSize: 15,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                const SizedBox(
                  height: 25,
                ),

                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      height: 200,
                      width: 450,
                      decoration: BoxDecoration(
                        color: Color.fromARGB(255, 255, 255, 255),
                        borderRadius: BorderRadius.circular(10.0),
                        boxShadow: [
                          BoxShadow(
                            color: Color.fromARGB(255, 232, 231, 231)
                                .withOpacity(0.5),
                            spreadRadius: 5,
                            blurRadius: 7,
                            offset: Offset(0, 3),
                          ),
                        ],
                        border: Border.all(
                          color: Color.fromARGB(255, 236, 237, 239),
                          width: 2,
                        ),
                      ),
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(10.0),
                        child: Stack(
                          children: [
                            // Ícone de hambúrguer
                            const Positioned(
                              top: 20,
                              left: 20,
                              child: Icon(
                                Icons.fastfood,
                                size: 24,
                                color: Colors.black,
                              ),
                            ),
                            // Texto 'Galut Burguer'
                            const Positioned(
                              top: 20,
                              left: 70,
                              child: Text(
                                'Galut Burguer',
                                style: TextStyle(
                                  fontSize: 16,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ),
                            // Linha quase transparente abaixo do texto
                            Positioned(
                              top: 75, // Ajuste conforme necessário
                              left: 70,
                              right: 50,
                              child: Container(
                                height: 1,
                                color: Colors.grey.withOpacity(0.5),
                              ),
                            ),

                            Positioned(
                              top: 140, // Ajuste conforme necessário
                              left: 70,
                              right: 50,
                              child: Container(
                                height: 1,
                                color: Colors.grey.withOpacity(0.5),
                              ),
                            ),
                            const Positioned(
                              top: 158,
                              right: 335,
                              child: Text(
                                'Ajuda',
                                style: TextStyle(color: Colors.red),
                              ),
                            ),
                            const Positioned(
                              top: 158,
                              right: 60,
                              child: Text(
                                'Adicionar à Sacola',
                                style: TextStyle(color: Colors.red),
                              ),
                            ),
                            // Ícone de seta para a direita
                            const Positioned(
                              top: 20,
                              right: 10,
                              child: Icon(
                                Icons.arrow_forward_ios_outlined,
                                size: 24,
                                color: Colors.black,
                              ),
                            ),
                            const Positioned(
                              top: 95,
                              left: 70,
                              child: Text(
                                'Pedido concluído N° 2577\n1 Cheddar Burguer + Fritas',
                                style: TextStyle(
                                  fontSize: 11,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),

                const SizedBox(
                  height: 25,
                ),

                const Padding(
                  padding: EdgeInsets.only(
                      left: 15), // Ajuste o valor conforme necessário
                  child: Text(
                    'Dom, 04 julho 2023',
                    style: TextStyle(
                      fontSize: 15,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),

                const SizedBox(
                  height: 25,
                ),

                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      height: 200,
                      width: 450,
                      decoration: BoxDecoration(
                        color: Color.fromARGB(255, 255, 255, 255),
                        borderRadius: BorderRadius.circular(10.0),
                        boxShadow: [
                          BoxShadow(
                            color: Color.fromARGB(255, 232, 231, 231)
                                .withOpacity(0.5),
                            spreadRadius: 5,
                            blurRadius: 7,
                            offset: Offset(0, 3),
                          ),
                        ],
                        border: Border.all(
                          color: Color.fromARGB(255, 236, 237, 239),
                          width: 2,
                        ),
                      ),
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(10.0),
                        child: Stack(
                          children: [
                            // Ícone de hambúrguer
                            const Positioned(
                              top: 20,
                              left: 20,
                              child: Icon(
                                Icons.local_pizza,
                                size: 24,
                                color: Colors.black,
                              ),
                            ),
                            // Texto 'Galut Burguer'
                            const Positioned(
                              top: 20,
                              left: 70,
                              child: Text(
                                'Menu Pizzaria',
                                style: TextStyle(
                                  fontSize: 16,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ),
                            // Linha quase transparente abaixo do texto
                            Positioned(
                              top: 75, // Ajuste conforme necessário
                              left: 70,
                              right: 50,
                              child: Container(
                                height: 1,
                                color: Colors.grey.withOpacity(0.5),
                              ),
                            ),

                            Positioned(
                              top: 140, // Ajuste conforme necessário
                              left: 70,
                              right: 50,
                              child: Container(
                                height: 1,
                                color: Colors.grey.withOpacity(0.5),
                              ),
                            ),
                            const Positioned(
                              top: 158,
                              right: 335,
                              child: Text(
                                'Ajuda',
                                style: TextStyle(color: Colors.red),
                              ),
                            ),
                            const Positioned(
                              top: 158,
                              right: 60,
                              child: Text(
                                'Adicionar à Sacola',
                                style: TextStyle(color: Colors.red),
                              ),
                            ),
                            // Ícone de seta para a direita
                            const Positioned(
                              top: 20,
                              right: 10,
                              child: Icon(
                                Icons.arrow_forward_ios_outlined,
                                size: 24,
                                color: Colors.black,
                              ),
                            ),
                            const Positioned(
                              top: 95,
                              left: 70,
                              child: Text(
                                'Pedido concluído N° 2431\n1 Pizza Gigante',
                                style: TextStyle(
                                  fontSize: 11,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),

                const SizedBox(
                  height: 25,
                ),

                const Padding(
                  padding: EdgeInsets.only(
                      left: 15), // Ajuste o valor conforme necessário
                  child: Text(
                    'Qua, 08 Março 2023',
                    style: TextStyle(
                      fontSize: 15,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),

                const SizedBox(
                  height: 25,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      height: 200,
                      width: 450,
                      decoration: BoxDecoration(
                        color: Color.fromARGB(255, 255, 255, 255),
                        borderRadius: BorderRadius.circular(10.0),
                        boxShadow: [
                          BoxShadow(
                            color: Color.fromARGB(255, 232, 231, 231)
                                .withOpacity(0.5),
                            spreadRadius: 5,
                            blurRadius: 7,
                            offset: Offset(0, 3),
                          ),
                        ],
                        border: Border.all(
                          color: Color.fromARGB(255, 236, 237, 239),
                          width: 2,
                        ),
                      ),
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(10.0),
                        child: Stack(
                          children: [
                            // Ícone de hambúrguer
                            const Positioned(
                              top: 20,
                              left: 20,
                              child: Icon(
                                Icons.icecream_sharp,
                                size: 24,
                                color: Colors.black,
                              ),
                            ),
                            // Texto 'Galut Burguer'
                            const Positioned(
                              top: 20,
                              left: 70,
                              child: Text(
                                'Vidal\'s Açai',
                                style: TextStyle(
                                  fontSize: 16,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ),
                            // Linha quase transparente abaixo do texto
                            Positioned(
                              top: 75, // Ajuste conforme necessário
                              left: 70,
                              right: 50,
                              child: Container(
                                height: 1,
                                color: Colors.grey.withOpacity(0.5),
                              ),
                            ),

                            Positioned(
                              top: 140, // Ajuste conforme necessário
                              left: 70,
                              right: 50,
                              child: Container(
                                height: 1,
                                color: Colors.grey.withOpacity(0.5),
                              ),
                            ),
                            const Positioned(
                              top: 158,
                              right: 335,
                              child: Text(
                                'Ajuda',
                                style: TextStyle(color: Colors.red),
                              ),
                            ),
                            const Positioned(
                              top: 158,
                              right: 60,
                              child: Text(
                                'Adicionar à Sacola',
                                style: TextStyle(color: Colors.red),
                              ),
                            ),
                            // Ícone de seta para a direita
                            const Positioned(
                              top: 20,
                              right: 10,
                              child: Icon(
                                Icons.arrow_forward_ios_outlined,
                                size: 24,
                                color: Colors.black,
                              ),
                            ),
                            const Positioned(
                              top: 95,
                              left: 70,
                              child: Text(
                                'Pedido concluído N° 6712\nAçai 700ml',
                                style: TextStyle(
                                  fontSize: 11,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),

                Container(
                  height: 100,
                )
              ],
            ),
            Column(
              children: [
                Expanded(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Container(
                        color: Colors.white,
                        child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Column(
                                children: [
                                  IconButton(
                                    iconSize: 35,
                                    icon: const Icon(Icons.home),
                                    onPressed: () {
                                      Navigator.pushNamed(context, "/HomePage");
                                    },
                                  ),
                                  const Text('Home')
                                ],
                              ),
                              Column(
                                children: [
                                  IconButton(
                                    iconSize: 35,
                                    icon: const Icon(Icons.search),
                                    onPressed: () {
                                      Navigator.pushNamed(context, "/Busca");
                                    },
                                  ),
                                  const Text('Busca')
                                ],
                              ),
                              Column(
                                children: [
                                  IconButton(
                                    iconSize: 35,
                                    icon:
                                        const Icon(Icons.format_list_numbered),
                                    onPressed: () {
                                      // ...
                                    },
                                  ),
                                  const Text('Pedidos')
                                ],
                              ),
                            ]),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ],
        ),
        drawer: Drawer(
          child: Column(
            children: [
              Container(
                height: 100,
                child: Row(
                  children: [
                    Image.asset('assets/images/flutter.png'),
                    const SizedBox(
                      width: 0,
                    ),
                    const Text('Usuário da Siva')
                  ],
                ),
              ),
              const Text('_____________________________________________'),
              const ListTile(
                title: Text('Endereços'),
                subtitle: Text('Meus endereços de entrega'),
                leading: Icon(Icons.location_city),
                trailing: Icon(
                  Icons.arrow_forward,
                  color: Colors.grey,
                ),
              ),
              const ListTile(
                title: Text('Doações'),
                subtitle: Text('Minhas doações'),
                leading: Icon(Icons.done_all),
                trailing: Icon(
                  Icons.arrow_forward,
                  color: Colors.grey,
                ),
              ),
              const ListTile(
                title: Text('Meus dados'),
                subtitle: Text('Minhas informações da conta'),
                leading: Icon(Icons.list),
                trailing: Icon(
                  Icons.arrow_forward,
                  color: Colors.grey,
                ),
              ),
              const SizedBox(
                height: 50,
              ),
              const ListTile(
                title: Text('Ajuda'),
                leading: Icon(Icons.help),
                trailing: Icon(
                  Icons.arrow_forward,
                  color: Colors.grey,
                ),
              ),
              const ListTile(
                title: Text('Configurações'),
                leading: Icon(Icons.settings),
                trailing: Icon(
                  Icons.arrow_forward,
                  color: Colors.grey,
                ),
              ),
              const ListTile(
                title: Text('Segurança'),
                leading: Icon(Icons.security),
                trailing: Icon(
                  Icons.arrow_forward,
                  color: Colors.grey,
                ),
              ),
              const ListTile(
                title: Text('Usar no carro'),
                leading: Icon(Icons.car_crash),
                trailing: Icon(
                  Icons.arrow_forward,
                  color: Colors.grey,
                ),
              ),
              const ListTile(
                title: Text('Sugerir restaurantes'),
                leading: Icon(Icons.store),
                trailing: Icon(
                  Icons.arrow_forward,
                  color: Colors.grey,
                ),
              ),
              const SizedBox(
                height: 30,
              ),
            ],
          ),
        ),
        appBar: AppBar(
          backgroundColor: Colors.white,
          flexibleSpace: Center(
            child: Container(
              alignment: Alignment.center,
              child: Image.asset(
                'assets/images/logo.png',
                height: 100, // Defina a altura desejada
                width: 100, // Defina a largura desejada
              ),
            ),
          ),
          centerTitle: true,
        ),
      ),
    );
  }
}
