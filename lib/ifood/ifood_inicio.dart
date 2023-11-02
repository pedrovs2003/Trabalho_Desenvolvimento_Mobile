import 'package:flutter/material.dart';

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
                        Container(
                          color: Colors.green,
                          height: 80,
                          width: 90,
                        ),
                        const SizedBox(
                          width: 5,
                        ),
                        Container(
                          color: Colors.green,
                          height: 80,
                          width: 90,
                        ),
                        const SizedBox(
                          width: 5,
                        ),
                        Container(
                          color: Colors.green,
                          height: 80,
                          width: 90,
                        ),
                        const SizedBox(
                          width: 5,
                        ),
                        Container(
                          color: Colors.green,
                          height: 80,
                          width: 90,
                        ),
                        const SizedBox(
                          width: 5,
                        ),
                        Container(
                          color: Colors.green,
                          height: 80,
                          width: 90,
                        ),
                        const SizedBox(
                          width: 5,
                        ),
                        Container(
                          color: Colors.green,
                          height: 80,
                          width: 90,
                        ),
                      ],
                    ),
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
                        Container(
                          color: Colors.pink,
                          height: 120,
                          width: 120,
                        ),
                        const SizedBox(
                          width: 5,
                        ),
                        Container(
                          color: Colors.pink,
                          height: 120,
                          width: 120,
                        ),
                        const SizedBox(
                          width: 5,
                        ),
                        Container(
                          color: Colors.pink,
                          height: 120,
                          width: 120,
                        ),
                        const SizedBox(
                          width: 5,
                        ),
                        Container(
                          color: Colors.pink,
                          height: 120,
                          width: 120,
                        ),
                        const SizedBox(
                          width: 5,
                        ),
                        Container(
                          color: Colors.pink,
                          height: 120,
                          width: 120,
                        ),
                        const SizedBox(
                          width: 5,
                        ),
                        Container(
                          color: Colors.pink,
                          height: 120,
                          width: 120,
                        ),
                        const SizedBox(
                          width: 5,
                        ),
                        Container(
                          color: Colors.pink,
                          height: 120,
                          width: 120,
                        ),
                      ],
                    ),
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
                        Container(
                          color: Colors.grey,
                          height: 120,
                          width: 120,
                        ),
                        const SizedBox(
                          width: 5,
                        ),
                        Container(
                          color: Colors.grey,
                          height: 120,
                          width: 120,
                        ),
                        const SizedBox(
                          width: 5,
                        ),
                        Container(
                          color: Colors.grey,
                          height: 120,
                          width: 120,
                        ),
                        const SizedBox(
                          width: 5,
                        ),
                        Container(
                          color: Colors.grey,
                          height: 120,
                          width: 120,
                        ),
                        const SizedBox(
                          width: 5,
                        ),
                        Container(
                          color: Colors.grey,
                          height: 120,
                          width: 120,
                        ),
                        const SizedBox(
                          width: 5,
                        ),
                        Container(
                          color: Colors.grey,
                          height: 120,
                          width: 120,
                        ),
                        const SizedBox(
                          width: 5,
                        ),
                        Container(
                          color: Colors.grey,
                          height: 120,
                          width: 120,
                        ),
                      ],
                    ),
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
                        Container(
                          color: Colors.black,
                          height: 80,
                          width: 90,
                        ),
                        const SizedBox(
                          width: 5,
                        ),
                        Container(
                          color: Colors.black,
                          height: 80,
                          width: 90,
                        ),
                        const SizedBox(
                          width: 5,
                        ),
                        Container(
                          color: Colors.black,
                          height: 80,
                          width: 90,
                        ),
                        const SizedBox(
                          width: 5,
                        ),
                        Container(
                          color: Colors.black,
                          height: 80,
                          width: 90,
                        ),
                        const SizedBox(
                          width: 5,
                        ),
                        Container(
                          color: Colors.black,
                          height: 80,
                          width: 90,
                        ),
                        const SizedBox(
                          width: 5,
                        ),
                        Container(
                          color: Colors.black,
                          height: 80,
                          width: 90,
                        ),
                        const SizedBox(
                          width: 5,
                        ),
                        Container(
                          color: Colors.black,
                          height: 80,
                          width: 90,
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
                        ElevatedButton(
                            onPressed: () {}, child: const Text('Botão')),
                        ElevatedButton(
                            onPressed: () {}, child: const Text('Botão')),
                        ElevatedButton(
                            onPressed: () {}, child: const Text('Botão')),
                        ElevatedButton(
                            onPressed: () {}, child: const Text('Botão')),
                        ElevatedButton(
                            onPressed: () {}, child: const Text('Botão')),
                        ElevatedButton(
                            onPressed: () {}, child: const Text('Botão')),
                      ],
                    ),
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
                  Container(
                    color: Colors.purple,
                    width: 490,
                    height: 90,
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Container(
                    color: Colors.purple,
                    width: 490,
                    height: 90,
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Container(
                    color: Colors.purple,
                    width: 490,
                    height: 90,
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Container(
                    color: Colors.purple,
                    width: 490,
                    height: 90,
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Container(
                    color: Colors.purple,
                    width: 490,
                    height: 90,
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Container(
                    color: Colors.purple,
                    width: 490,
                    height: 90,
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Container(
                    color: Colors.purple,
                    width: 490,
                    height: 90,
                  ),
                  const SizedBox(
                    height: 90,
                  ),
                ],
              ),
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
                                    // ...
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
                                    // ...
                                  },
                                ),
                                const Text('Busca')
                              ],
                            ),
                            Column(
                              children: [
                                IconButton(
                                  iconSize: 35,
                                  icon: const Icon(Icons.format_list_numbered),
                                  onPressed: () {
                                    // ...
                                  },
                                ),
                                const Text('Pedidos')
                              ],
                            ),
                            Column(
                              children: [
                                IconButton(
                                  iconSize: 35,
                                  icon: const Icon(Icons.person),
                                  onPressed: () {
                                    Navigator.pushNamed(context, "/Perfil");
                                  },
                                ),
                                const Text('Perfil')
                              ],
                            ),
                          ]),
                    ),
                  ],
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}
