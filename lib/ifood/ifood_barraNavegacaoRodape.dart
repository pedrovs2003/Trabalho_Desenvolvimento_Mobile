import 'package:flutter/material.dart';

Column BarraNavegacaoRodape(BuildContext context) {
    return Column(
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
                                    Navigator.pushNamed(context, "/Pedidos");
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
          );
  }