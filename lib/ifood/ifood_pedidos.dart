import 'package:flutter/material.dart';
import 'ifood_DataPedido.dart';
import 'ifood_barraNavegacaoRodape.dart';
import 'ifood_containerHistorico.dart';
import 'ifood_conteudo_drawer.dart';

class IfoodPedidos extends StatefulWidget {
  const IfoodPedidos({super.key});

  @override
  State<IfoodPedidos> createState() => Pedidos();
}

class Pedidos extends State<IfoodPedidos> {
  Pedidos({Key? key});

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
                const Center(
                  child: Text(
                    'MEUS PEDIDOS',
                    style: TextStyle(
                      fontSize: 15,
                      fontWeight: FontWeight.bold,
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
                            Align(
                              alignment: Alignment.bottomCenter,
                              child: Container(
                                margin: const EdgeInsets.only(bottom: 15),
                                height: 40,
                                width: 400,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(7.0),
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
                const SizedBox(
                  height: 30,
                ),

                //Container rosa informando sobre cupom
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Center(
                      child: Container(
                        height: 40,
                        width: 445,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(7.0),
                          color: const Color.fromARGB(255, 232, 173, 231),
                        ),
                        child: const Padding(
                          padding: EdgeInsets.only(left: 35),
                          child: Row(
                            children: [
                              Icon(
                                Icons.diamond_sharp,
                                color: Colors.purple,
                                size: 16,
                              ),
                              SizedBox(width: 5),
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

                //Método usado para atribuir uma data ao pedido
                DataPedido('Histórico\nSex, 04 agosto 2023'),

                const SizedBox(
                  height: 25,
                ),

                //Container com o histórico de determinado pedido
                ContainerHistorico(Icons.fastfood, 'Galut Burguer',
                    'Pedido concluído N° 2577\n1 Cheddar Burguer + Fritas'),

                const SizedBox(
                  height: 25,
                ),

                //Método usado para atribuir uma data ao pedido
                DataPedido('Dom, 04 julho 2023'),
                const SizedBox(
                  height: 25,
                ),

                //Container com o histórico de determinado pedido
                ContainerHistorico(Icons.local_pizza, 'Menu Pizzaria',
                    'Pedido concluído N° 2431\n1 Pizza Gigante'),

                const SizedBox(
                  height: 25,
                ),

                //Método usado para atribuir uma data ao pedido
                DataPedido('Qua, 08 Março 2023'),
                const SizedBox(
                  height: 25,
                ),

                //Container com o histórico de determinado pedido
                ContainerHistorico(Icons.icecream_sharp, 'Vidal\'s Açai',
                    'Pedido concluído N° 6712\nAçai 700ml'),
                const SizedBox(
                  height: 25,
                ),

                Container(
                  height: 100,
                )
              ],
            ),

            //Barra de navegação localizada no rodapé da página
            BarraNavegacaoRodape(context),

          ],
        ),

        //Barra de navegação no rodapé da página
        drawer: Drawer(child: IfoodConteudoDrawer()),
        appBar: AppBar(
          backgroundColor: Colors.white,
          flexibleSpace: Center(
            child: Container(
              alignment: Alignment.center,
              child: Image.asset(
                'assets/images/logo.png',
                height: 100,
                width: 100,
              ),
            ),
          ),
          centerTitle: true,
        ),
      ),
    );
  }

  
}
