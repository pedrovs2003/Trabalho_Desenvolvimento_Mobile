import 'package:flutter/material.dart';
import 'package:flutter_application_1/ifood/ifood_conteudo_drawer.dart';
import 'package:flutter_application_1/ifood/ifood_inserir_pedido.dart';

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
                    'Endereço atual do cliente',
                    style: TextStyle(fontSize: 15),
                  ),
                  SizedBox(
                    width: 120,
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
                      Container(
                        margin: const EdgeInsets.only(
                            right: 30, left: 30, top: 30, bottom: 10),
                        decoration: const BoxDecoration(
                          color: Color.fromARGB(37, 110, 108, 108),
                          borderRadius: BorderRadius.all(Radius.circular(10)),
                        ),
                        height: 80,
                        width: 180,
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Container(
                              padding: const EdgeInsets.all(15),
                              child: const Text('Restaurantes'),
                            ),
                            const SizedBox(
                              width: 10,
                            ),
                            Column(
                              children: [
                                const SizedBox(
                                  height: 10,
                                ),
                                //Para deixar a imagem arredondada, usei o seguinte Widget:
                                ClipRRect(
                                  borderRadius: BorderRadius.circular(15),
                                  child: Image.asset(
                                    'assets/images/comida.jpg',
                                    width: 40,
                                    height: 40,
                                    fit: BoxFit.cover,
                                  ),
                                )
                              ],
                            )
                          ],
                        ),
                      ),
                      Container(
                        margin: const EdgeInsets.only(
                            right: 30, left: 30, top: 30, bottom: 10),
                        decoration: const BoxDecoration(
                          color: Color.fromARGB(37, 110, 108, 108),
                          borderRadius: BorderRadius.all(Radius.circular(10)),
                        ),
                        height: 80,
                        width: 180,
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Container(
                              padding: const EdgeInsets.all(15),
                              child: const Text('Mercado'),
                            ),
                            const SizedBox(
                              width: 25,
                            ),
                            Column(
                              children: [
                                const SizedBox(
                                  height: 10,
                                ),
                                //Para deixar a imagem arredondada, usei o seguinte Widget:
                                ClipRRect(
                                  borderRadius: BorderRadius.circular(15),
                                  child: Image.asset(
                                    'assets/images/mercado.png',
                                    width: 40,
                                    height: 40,
                                    fit: BoxFit.cover,
                                  ),
                                )
                              ],
                            )
                          ],
                        ),
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      Container(
                        margin: const EdgeInsets.only(
                            right: 30, left: 30, top: 30, bottom: 10),
                        decoration: const BoxDecoration(
                          color: Color.fromARGB(37, 110, 108, 108),
                          borderRadius: BorderRadius.all(Radius.circular(10)),
                        ),
                        height: 80,
                        width: 180,
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Container(
                              padding: const EdgeInsets.all(15),
                              child: const Text('Farmácia'),
                            ),
                            const SizedBox(
                              width: 25,
                            ),
                            Column(
                              children: [
                                const SizedBox(
                                  height: 10,
                                ),
                                //Para deixar a imagem arredondada, usei o seguinte Widget:
                                ClipRRect(
                                  borderRadius: BorderRadius.circular(15),
                                  child: Image.asset(
                                    'assets/images/farmacia.jpg',
                                    width: 40,
                                    height: 40,
                                    fit: BoxFit.cover,
                                  ),
                                )
                              ],
                            )
                          ],
                        ),
                      ),
                      Container(
                        margin:
                            const EdgeInsets.only(left: 30, right: 10, top: 0),
                        decoration: const BoxDecoration(
                          color: Color.fromARGB(37, 110, 108, 108),
                          borderRadius: BorderRadius.all(Radius.circular(10)),
                        ),
                        height: 80,
                        width: 85,
                        padding: const EdgeInsets.all(10),
                        child: Column(
                          children: [
                            const Text('Shopping'),
                            const SizedBox(
                              height: 5,
                            ),
                            ClipRRect(
                              borderRadius: BorderRadius.circular(15),
                              child: Image.asset(
                                'assets/images/compras.jpg',
                                width: 35,
                                height: 35,
                                fit: BoxFit.cover,
                              ),
                            )
                          ],
                        ),
                      ),
                      Container(
                        decoration: const BoxDecoration(
                          color: Color.fromARGB(37, 110, 108, 108),
                          borderRadius: BorderRadius.all(Radius.circular(10)),
                        ),
                        height: 80,
                        width: 85,
                        padding: const EdgeInsets.all(10),
                        child: Column(
                          children: [
                            const Text('Pet Shop'),
                            const SizedBox(
                              height: 5,
                            ),
                            ClipRRect(
                              borderRadius: BorderRadius.circular(15),
                              child: Image.asset(
                                'assets/images/pet.png',
                                width: 35,
                                height: 35,
                                fit: BoxFit.cover,
                              ),
                            )
                          ],
                        ),
                      ),
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
                        Container(
                          height: 160,
                          width: 360,
                          padding: const EdgeInsets.all(5),
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(15),
                            child: Image.asset(
                              'assets/images/publi0.jpg',
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                        const SizedBox(
                          width: 5,
                        ),
                        Container(
                          height: 160,
                          width: 360,
                          padding: const EdgeInsets.all(5),
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(15),
                            child: Image.asset(
                              'assets/images/publi1.jpg',
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                        Container(
                          height: 160,
                          width: 360,
                          padding: const EdgeInsets.all(5),
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(15),
                            child: Image.asset(
                              'assets/images/publi2.jpg',
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                        const SizedBox(
                          width: 5,
                        ),
                        Container(
                          height: 160,
                          width: 360,
                          padding: const EdgeInsets.all(5),
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(15),
                            child: Image.asset(
                              'assets/images/publi3.jpg',
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                        const SizedBox(
                          width: 5,
                        ),
                        Container(
                          height: 160,
                          width: 360,
                          padding: const EdgeInsets.all(5),
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(15),
                            child: Image.asset(
                              'assets/images/publi4.jpg',
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                        const SizedBox(
                          width: 5,
                        ),
                        Container(
                          height: 160,
                          width: 360,
                          padding: const EdgeInsets.all(5),
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(15),
                            child: Image.asset(
                              'assets/images/publi5.jpg',
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
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
                        Container(
                          decoration: BoxDecoration(
                              border: Border.all(color: Colors.grey, width: 1),
                              borderRadius: BorderRadius.circular(10)),
                          height: 100,
                          width: 120,
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Container(
                                decoration: const BoxDecoration(
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(10)),
                                ),
                                height: 45,
                                width: 110,
                                child: ClipRRect(
                                    borderRadius: BorderRadius.circular(15),
                                    child: Image.asset(
                                        'assets/images/cupom0.jpg')),
                              ),
                              const SizedBox(
                                height: 3,
                              ),
                              Container(
                                  decoration: const BoxDecoration(
                                    borderRadius:
                                        BorderRadius.all(Radius.circular(10)),
                                  ),
                                  height: 45,
                                  width: 110,
                                  child: const Column(
                                    children: [
                                      SizedBox(height: 5),
                                      Text('Em Super\nRestaurantes',
                                          textAlign: TextAlign.center,
                                          style: TextStyle(fontSize: 10)),
                                    ],
                                  )),
                            ],
                          ),
                        ),
                        const SizedBox(
                          width: 5,
                        ),
                        const SizedBox(
                          height: 35,
                        ),
                        Container(
                          decoration: BoxDecoration(
                              border: Border.all(color: Colors.grey, width: 1),
                              borderRadius: BorderRadius.circular(10)),
                          height: 100,
                          width: 120,
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Container(
                                decoration: const BoxDecoration(
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(10)),
                                ),
                                height: 45,
                                width: 110,
                                child: ClipRRect(
                                    borderRadius: BorderRadius.circular(15),
                                    child: Image.asset(
                                        'assets/images/cupom1.jpg')),
                              ),
                              const SizedBox(
                                height: 3,
                              ),
                              Container(
                                  decoration: const BoxDecoration(
                                    borderRadius:
                                        BorderRadius.all(Radius.circular(10)),
                                  ),
                                  height: 45,
                                  width: 110,
                                  child: const Column(
                                    children: [
                                      SizedBox(height: 5),
                                      Text('Em Restaurantes\nFamosos',
                                          textAlign: TextAlign.center,
                                          style: TextStyle(fontSize: 10)),
                                    ],
                                  )),
                            ],
                          ),
                        ),
                        const SizedBox(
                          width: 5,
                        ),
                        Container(
                          decoration: BoxDecoration(
                              border: Border.all(color: Colors.grey, width: 1),
                              borderRadius: BorderRadius.circular(10)),
                          height: 100,
                          width: 120,
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Container(
                                decoration: const BoxDecoration(
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(10)),
                                ),
                                height: 45,
                                width: 110,
                                child: ClipRRect(
                                    borderRadius: BorderRadius.circular(15),
                                    child: Image.asset(
                                        'assets/images/cupom2.jpg')),
                              ),
                              const SizedBox(
                                height: 1,
                              ),
                              Container(
                                  decoration: const BoxDecoration(
                                    borderRadius:
                                        BorderRadius.all(Radius.circular(10)),
                                  ),
                                  height: 45,
                                  width: 110,
                                  child: const Column(
                                    children: [
                                      SizedBox(height: 10),
                                      Text('Em mercado',
                                          textAlign: TextAlign.center,
                                          style: TextStyle(fontSize: 10)),
                                    ],
                                  )),
                            ],
                          ),
                        ),
                        const SizedBox(
                          width: 5,
                        ),
                        Container(
                          decoration: BoxDecoration(
                              border: Border.all(color: Colors.grey, width: 1),
                              borderRadius: BorderRadius.circular(10)),
                          height: 100,
                          width: 120,
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Container(
                                decoration: const BoxDecoration(
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(10)),
                                ),
                                height: 45,
                                width: 110,
                                child: ClipRRect(
                                    borderRadius: BorderRadius.circular(15),
                                    child: Image.asset(
                                        'assets/images/cupom3.jpg')),
                              ),
                              const SizedBox(
                                height: 3,
                              ),
                              Container(
                                  decoration: const BoxDecoration(
                                    borderRadius:
                                        BorderRadius.all(Radius.circular(10)),
                                  ),
                                  height: 45,
                                  width: 110,
                                  child: const Column(
                                    children: [
                                      SizedBox(height: 10),
                                      Text('Em Promoções',
                                          textAlign: TextAlign.center,
                                          style: TextStyle(fontSize: 10)),
                                    ],
                                  )),
                            ],
                          ),
                        ),
                        const SizedBox(
                          width: 5,
                        ),
                        Container(
                          decoration: BoxDecoration(
                              border: Border.all(color: Colors.grey, width: 1),
                              borderRadius: BorderRadius.circular(10)),
                          height: 100,
                          width: 120,
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Container(
                                decoration: const BoxDecoration(
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(10)),
                                ),
                                height: 45,
                                width: 110,
                                child: ClipRRect(
                                    borderRadius: BorderRadius.circular(15),
                                    child: Image.asset(
                                        'assets/images/cupom2.jpg')),
                              ),
                              const SizedBox(
                                height: 3,
                              ),
                              Container(
                                  decoration: const BoxDecoration(
                                    borderRadius:
                                        BorderRadius.all(Radius.circular(10)),
                                  ),
                                  height: 45,
                                  width: 110,
                                  child: const Column(
                                    children: [
                                      SizedBox(height: 5),
                                      Text('Em Super\nRestaurantes',
                                          textAlign: TextAlign.center,
                                          style: TextStyle(fontSize: 10)),
                                    ],
                                  )),
                            ],
                          ),
                        ),
                        const SizedBox(
                          width: 5,
                        ),
                        Container(
                          decoration: BoxDecoration(
                              border: Border.all(color: Colors.grey, width: 1),
                              borderRadius: BorderRadius.circular(10)),
                          height: 100,
                          width: 120,
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Container(
                                decoration: const BoxDecoration(
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(10)),
                                ),
                                height: 45,
                                width: 110,
                                child: ClipRRect(
                                    borderRadius: BorderRadius.circular(15),
                                    child: Image.asset(
                                        'assets/images/cupom0.jpg')),
                              ),
                              const SizedBox(
                                height: 3,
                              ),
                              Container(
                                  decoration: const BoxDecoration(
                                    borderRadius:
                                        BorderRadius.all(Radius.circular(10)),
                                  ),
                                  height: 45,
                                  width: 110,
                                  child: const Column(
                                    children: [
                                      SizedBox(height: 5),
                                      Text('Em Super\nRestaurantes',
                                          textAlign: TextAlign.center,
                                          style: TextStyle(fontSize: 10)),
                                    ],
                                  )),
                            ],
                          ),
                        ),
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
                  // SingleChildScrollView(
                  //   scrollDirection: Axis.horizontal,
                  //   child: Row(
                  //     children: [
                  //       ElevatedButton(
                  //           onPressed: () {}, child: const Text('Botão')),
                  //       ElevatedButton(
                  //           onPressed: () {}, child: const Text('Botão')),
                  //       ElevatedButton(
                  //           onPressed: () {}, child: const Text('Botão')),
                  //       ElevatedButton(
                  //           onPressed: () {}, child: const Text('Botão')),
                  //       ElevatedButton(
                  //           onPressed: () {}, child: const Text('Botão')),
                  //       ElevatedButton(
                  //           onPressed: () {}, child: const Text('Botão')),
                  //     ],
                  //   ),
                  // ),
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

                  loja(context, "assets/images/loja8.png", 'Noodle Chinese food',
                      '4,7', 'Japones', '1,0 km'),
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
                  loja(context, "assets/images/loja10.png", 'Pizza Hut',
                      '4,3', 'Pizza', '10,1 km'),

                 SizedBox(
                  height: 100,
                 )
                ],
              ),
            ],
          ),
          
          Column(
            children: [
              Expanded(
                  child: Column(
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
                                        Navigator.pushNamed(
                                            context, "/HomePage");
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
                                      icon: const Icon(
                                          Icons.format_list_numbered),
                                      onPressed: () {
                                        Navigator.pushNamed(
                                            context, "/Pedidos");
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
              )),
            ],
          )
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

  Row loja(BuildContext context, String imagemLoja, String nomeLoja,
      String clssificacao, String categoria, String distancia) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Container(
          height: 150,
          width: 500,
          decoration: BoxDecoration(
            color: const Color.fromARGB(255, 255, 255, 255),
            borderRadius: BorderRadius.circular(10.0),
            boxShadow: [
              BoxShadow(
                color:
                    const Color.fromARGB(255, 232, 231, 231).withOpacity(0.5),
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
                //Container com imagem circular da loja
                Positioned(
                    left: 10,
                    top: 25,
                    child: Container(
                      height: 50,
                      width: 60,
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        image: DecorationImage(
                          image: AssetImage(imagemLoja),
                          fit: BoxFit.fill,
                        ),
                      ),
                    )),
                // nome da loja
                Positioned(
                  left: 80,
                  top: 25,
                  child: Text(
                    nomeLoja,
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                //icone de estrela
                const Positioned(
                  left: 80,
                  top: 50,
                  child: Icon(Icons.star, size: 12, color: Colors.yellow),
                ),
                //Classicação
                Positioned(
                  left: 95,
                  top: 48,
                  child: Text(
                    clssificacao,
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Colors.yellow,
                      fontSize: 12.0,
                    ),
                  ),
                ),
                // //Pontinho
                // Positioned(
                //     left: 120,
                //     top: 54,
                //     child: Container(
                //       height: 5,
                //       width: 5,
                //       decoration: BoxDecoration(
                //         shape: BoxShape.circle,
                //         color: Color.fromARGB(86, 125, 118, 118),
                //       ),
                //     )),
                //Categoria da loja
                Positioned(
                  left: 135,
                  top: 45,
                  child: Text(
                    categoria,
                    style: TextStyle(),
                  ),
                ),
                // //Pontinho
                // Positioned(
                //     left: 236,
                //     top: 54,
                //     child: Container(
                //       height: 5,
                //       width: 5,
                //       decoration: BoxDecoration(
                //         shape: BoxShape.circle,
                //         color: Color.fromARGB(86, 125, 118, 118),
                //       ),
                //     )),
                //Distancia
                Positioned(
                  left: 250,
                  top: 46,
                  child: Text(
                    distancia,
                    style: TextStyle(
                      fontSize: 12.0,
                    ),
                  ),
                ),
                //ícone de coração
                const Positioned(
                  left: 450,
                  top: 25,
                  child: Icon(
                    Icons.favorite_border,
                    size: 20,
                  ),
                ),
                // Linha quase transparente abaixo do texto
                Positioned(
                  top: 100, // Ajuste conforme necessário
                  left: 70,
                  right: 50,
                  child: Container(
                    height: 1,
                    color: Colors.grey.withOpacity(0.5),
                  ),
                ),
                //Botão que acessa a loja
                Positioned(
                  top: 110,
                  left: 70,
                  right: 50,
                  child: ElevatedButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => IfoodInserirPedido()),
                      );
                    },
                    style: ElevatedButton.styleFrom(),
                    child: Text(
                      'Acessar Loja',
                      style: TextStyle(fontSize: 11),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }

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
}
