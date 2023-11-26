import 'package:flutter/material.dart';
import 'package:flutter_application_1/ifood/ifood_conteudo_drawer.dart';

import 'ifood_barraNavegacaoRodape.dart';
import 'ifood_componente.dart';
import 'ifood_componentes_iniciais-1.dart';
import 'ifood_componentes_iniciais-2.dart';
import 'ifood_cupom.dart';
import 'ifood_loja.dart';
import 'ifood_publi.dart';

class IfoodHomePage extends StatelessWidget {
  const IfoodHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          ListView(
            children: [
              const SizedBox(
                height: 10,
              ),
              const Row(
                children: [
                  SizedBox(
                    width: 150,
                  ),
                  Text(
                    'Rua José Dias Vieira, Xangri-lá',
                    style: TextStyle(fontSize: 15),
                  ),
                  SizedBox(
                    width: 80,
                  ),
                  Icon(
                    Icons.ring_volume,
                    color: Colors.red,
                  )
                ],
              ),
              Column(
                children: [
                  Row(
                    children: [
                      componentesIniciais(
                          'Restaurantes', 'assets/images/comida.jpg'),
                      componentesIniciais(
                          'Mercado', 'assets/images/mercado.png'),
                    ],
                  ),
                  Row(
                    children: [
                      componentesIniciais(
                          'Farmácia', 'assets/images/farmacia.jpg'),
                      componentesIniciais2(
                          'Shopping', 'assets/images/compras.jpg', 12, 30),
                      componentesIniciais2(
                          'Pet Shop', 'assets/images/pet.png', 5, 0),
                    ],
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      children: [
                        const SizedBox(
                          width: 5,
                        ),
                        publi('assets/images/publi0.jpg'),
                        const SizedBox(
                          width: 5,
                        ),
                        publi('assets/images/publi1.jpg'),
                        publi('assets/images/publi2.jpg'),
                        const SizedBox(
                          width: 5,
                        ),
                        publi('assets/images/publi3.jpg'),
                        const SizedBox(
                          width: 5,
                        ),
                        publi('assets/images/publi4.jpg'),
                        const SizedBox(
                          width: 5,
                        ),
                        publi('assets/images/publi5.jpg'),
                      ],
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Row(
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            margin: const EdgeInsets.only(
                                top: 10, left: 10, right: 10, bottom: 3),
                            child: const Text(
                              'Cupom de entrega grátis',
                              style: TextStyle(fontSize: 20),
                            ),
                          ),
                          Container(
                            margin: const EdgeInsets.only(
                                top: 0, left: 15, right: 10, bottom: 3),
                            child: const Text(
                              'Use seu cupom aqui!',
                              style: TextStyle(fontSize: 15),
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(
                        width: 150,
                      ),
                      const Text(
                        'Ver mais',
                        style: TextStyle(fontSize: 16, color: Colors.red),
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      Container(
                          margin: const EdgeInsets.only(left: 20, top: 15),
                          child: const Icon(
                            Icons.food_bank,
                            size: 50,
                          )),
                    ],
                  ),
                  Row(
                    children: [
                      Container(
                          margin: const EdgeInsets.only(left: 10),
                          child: const Text(
                            'Pra você que gosta de cupom',
                            style: TextStyle(fontSize: 20),
                          )),
                    ],
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      children: [
                        const SizedBox(
                          width: 5,
                        ),
                        cupom('assets/images/cupom0.jpg',
                            'Em Super\nRestaurantes'),
                        const SizedBox(
                          width: 5,
                        ),
                        const SizedBox(
                          height: 35,
                        ),
                        cupom('assets/images/cupom1.jpg',
                            'Em Restaurantes\nFamosos'),
                        const SizedBox(
                          width: 5,
                        ),
                        cupom('assets/images/cupom2.jpg', 'Em mercado'),
                        const SizedBox(
                          width: 5,
                        ),
                        cupom('assets/images/cupom3.jpg', 'Em Promoções'),
                        const SizedBox(
                          width: 5,
                        ),
                        cupom('assets/images/cupom3.jpg', 'Nos Mais Populares'),
                        const SizedBox(
                          width: 5,
                        ),
                        cupom('assets/images/cupom1.jpg', 'Em Sobremesas'),
                        const SizedBox(
                          width: 5,
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      children: [
                        const SizedBox(
                          width: 5,
                        ),
                        componente(
                            'assets/images/MercadoPaginaInicial.jpg', 80, 90),
                        const SizedBox(
                          width: 5,
                        ),
                        componente('assets/images/BrasileiraPaginaInicial.jpg',
                            80, 90),
                        const SizedBox(
                          width: 5,
                        ),
                        componente(
                            'assets/images/MarmitaPaginaInicial.jpg', 80, 90),
                        const SizedBox(
                          width: 5,
                        ),
                        componente(
                            'assets/images/SaudavelPaginaInicial.jpg', 80, 90),
                        const SizedBox(
                          width: 5,
                        ),
                        componente(
                            'assets/images/CarnePaginaInicial.jpg', 80, 90),
                        const SizedBox(
                          width: 5,
                        ),
                        componente(
                            'assets/images/PromocoesPaginaInicial.jpg', 80, 90),
                        const SizedBox(
                          width: 5,
                        ),
                        componente('assets/images/DocesBolosPaginaInicial.jpg',
                            80, 90),
                        const SizedBox(
                          width: 5,
                        ),
                        componente(
                            'assets/images/LanchesPaginaInicial.jpg', 80, 90),
                        const SizedBox(
                          width: 5,
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(
                    height: 35,
                  ),
                  Row(
                    children: [
                      Container(
                          margin: const EdgeInsets.all(10),
                          child: const Text(
                            'Pra quem curte lanches',
                            style: TextStyle(fontSize: 20),
                          )),
                      const SizedBox(
                        width: 160,
                      ),
                      const Text(
                        'Ver mais',
                        style: TextStyle(color: Colors.red, fontSize: 16),
                      )
                    ],
                  ),
                  SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      children: [
                        const SizedBox(
                          width: 5,
                        ),
                        componente('assets/images/Lanche01.jpg', 120, 120),
                        const SizedBox(
                          width: 5,
                        ),
                        componente("assets/images/Lanche02.jpg", 120, 120),
                        const SizedBox(
                          width: 5,
                        ),
                        componente("assets/images/Lanche03.jpg", 120, 120),
                        const SizedBox(
                          width: 5,
                        ),
                        componente("assets/images/Lanche04.jpg", 120, 120),
                        const SizedBox(
                          width: 5,
                        ),
                        componente("assets/images/Lanche05.jpg", 120, 120),
                      ],
                    ),
                  ),
                  const SizedBox(
                    height: 35,
                  ),
                  Row(
                    children: [
                      Container(
                          margin: const EdgeInsets.all(10),
                          child: const Text(
                            'Pra quem curte pizza',
                            style: TextStyle(fontSize: 20),
                          )),
                      const SizedBox(
                        width: 180,
                      ),
                      const Text(
                        'Ver mais',
                        style: TextStyle(color: Colors.red, fontSize: 16),
                      )
                    ],
                  ),
                  SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      children: [
                        const SizedBox(
                          width: 5,
                        ),
                        componente(
                            "assets/images/pizzaPaginaInicial1.jpg", 120, 120),
                        const SizedBox(
                          width: 5,
                        ),
                        componente(
                            "assets/images/pizzaPaginaInicial2.jpg", 120, 120),
                        const SizedBox(
                          width: 5,
                        ),
                        componente(
                            "assets/images/pizzaPaginaInicial3.jpg", 120, 120),
                        const SizedBox(
                          width: 5,
                        ),
                        componente(
                            "assets/images/pizzaPaginaInicial4.jpg", 120, 120),
                        const SizedBox(
                          width: 5,
                        ),
                        componente(
                            "assets/images/pizzaPaginaInicial5.jpg", 120, 120),
                        const SizedBox(
                          width: 5,
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(
                    height: 35,
                  ),
                  Row(
                    children: [
                      Container(
                          margin: const EdgeInsets.all(10),
                          child: const Text(
                            'Famosos no Ifood',
                            style: TextStyle(fontSize: 20),
                          )),
                      const SizedBox(
                        width: 210,
                      ),
                      const Text(
                        'Ver mais',
                        style: TextStyle(color: Colors.red, fontSize: 16),
                      )
                    ],
                  ),
                  SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      children: [
                        const SizedBox(
                          width: 5,
                        ),
                        componente("assets/images/famososIfood1.jpg", 80, 90),
                        const SizedBox(
                          width: 5,
                        ),
                        componente("assets/images/famososIfood2.jpg", 80, 90),
                        const SizedBox(
                          width: 5,
                        ),
                        componente("assets/images/famososIfood3.jpg", 80, 90),
                        const SizedBox(
                          width: 5,
                        ),
                        componente("assets/images/famososIfood4.jpg", 80, 90),
                        const SizedBox(
                          width: 5,
                        ),
                        componente("assets/images/famososIfood5.jpg", 80, 90),
                        const SizedBox(
                          width: 5,
                        ),
                        componente("assets/images/famososIfood1.jpg", 80, 90),
                        const SizedBox(
                          width: 10,
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Row(
                    children: [
                      Container(
                          margin: const EdgeInsets.only(left: 10, top: 10),
                          child: const Text(
                            'Lojas',
                            style: TextStyle(fontSize: 20),
                          )),
                    ],
                  ),
                  const SizedBox(
                    height: 20,
                  ),

                  loja(context, "assets/images/loja1.webp", 'Casa do Tropeiro',
                      '4,8', 'Brasileira', '2,5 km'),
                  const SizedBox(
                    height: 13,
                  ),
                  loja(context, "assets/images/loja2.jpg", 'Pizza Pazza', '4,5',
                      'Pizza', '7,8 km'),
                  const SizedBox(
                    height: 13,
                  ),

                  loja(context, "assets/images/loja3.png", 'Kaito Suchi', '4,1',
                      'Japonesa', '1,7 km'),
                  const SizedBox(
                    height: 13,
                  ),

                  loja(context, "assets/images/loja4.jpg", 'Padaria Bom Pão',
                      '3,9', 'Padaria', '4,5 km'),
                  const SizedBox(
                    height: 13,
                  ),

                  loja(context, "assets/images/loja5.png", 'Rocco Burguer',
                      '4,8', 'Lanches', '4,9 km'),
                  const SizedBox(
                    height: 13,
                  ),

                  loja(context, "assets/images/loja6.jpg", 'Organic Shop',
                      '4,1', 'Marmitas', '1,1 km'),
                  const SizedBox(
                    height: 13,
                  ),

                  loja(context, "assets/images/loja7.jpg", 'Sandaf Coffe Shop',
                      '4,0', 'Padaria', '3,1 km'),
                  const SizedBox(
                    height: 13,
                  ),

                  loja(context, "assets/images/loja8.png",
                      'Noodle Chinese food', '4,7', 'Japones', '1,0 km'),
                  const SizedBox(
                    height: 13,
                  ),
                  //
                  loja(context, "assets/images/loja9.png", 'Burguer King',
                      '4,0', 'Lanches', '6,1 km'),
                  const SizedBox(
                    height: 13,
                  ),
                  //
                  loja(context, "assets/images/loja10.png", 'Pizza Hut', '4,3',
                      'Pizza', '10,1 km'),

                  const SizedBox(
                    height: 100,
                  )
                ],
              ),
            ],
          ),

          //Barra de navegação localizada no rodapé da página
          BarraNavegacaoRodape(context),
        ],
      ),
      drawer: Drawer(
        child: IfoodConteudoDrawer(),
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
    );
  }
}
