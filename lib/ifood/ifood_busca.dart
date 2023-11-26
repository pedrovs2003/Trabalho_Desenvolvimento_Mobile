import 'package:flutter/material.dart';
import 'ifood_conteudo_drawer.dart';

class IfoodBusca extends StatelessWidget {
  const IfoodBusca({Key? key});

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
                Center(
                  child: Container(
                    height: 65,
                    width: 550, // Ajuste o valor conforme necessário
                    decoration: BoxDecoration(
                      color: const Color.fromARGB(
                          255, 244, 244, 244), // Alterado para cinza
                      borderRadius: BorderRadius.circular(5.0),
                    ),
                    child: const Row(
                      crossAxisAlignment:
                          CrossAxisAlignment.center, // Centraliza verticalmente
                      children: [
                        Padding(
                          padding: EdgeInsets.only(
                              left: 16.0), // Aumenta o espaçamento
                          child: Icon(
                            Icons.search,
                            color:
                                Color.fromARGB(255, 237, 8, 8), // Cor do ícone
                          ),
                        ),
                        SizedBox(
                            width:
                                16.0), // Adiciona um espaço entre o ícone e o texto
                        Text(
                          "Buscar em Todo iFood",
                          style: TextStyle(
                            color: Color.fromARGB(255, 0, 0, 0), // Cor do texto
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                Container(
                  height: 25,
                ),
                Container(
                  padding: const EdgeInsets.only(
                      left: 55.0), // Adiciona espaçamento à esquerda
                  child: const Text(
                    'Categorias',
                    style: TextStyle(
                      fontSize: 25.0,
                      fontWeight:
                          FontWeight.bold, 
                    ),
                  ),
                ),
                categoria(context, 'assets/images/bebidas.png',
                    'assets/images/mercado.png'),
                categoria(context, "assets/images/pet.jpg",
                    "assets/images/shopping.jpg"),
                categoria(context, "assets/images/restauranteSuper.jpg",
                    "assets/images/gourmet.jpg"),
                categoria(context, "assets/images/pizza.jpg",
                    "assets/images/lanches.jpg"),
                categoria(context, "assets/images/japonesa.jpg",
                    "assets/images/brasileira.jpg"),
                categoria(context, "assets/images/chinesa.jpg",
                    "assets/images/saudavel.jpg"),
                categoria(context, "assets/images/crepesEpanquecas.jpg",
                    "assets/images/arabe.jpg"),
                categoria(context, "assets/images/tapioca.jpg",
                    "assets/images/sorvetes.jpg"),
                const SizedBox(
                  height: 80,
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
            ),
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
  Row categoria(BuildContext context, String imagem1, String imagem2) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Row(
          children: [
            Container(
              height: 100,
              width: 235,
              decoration: BoxDecoration(
                color: Colors.yellow,
                borderRadius: BorderRadius.circular(10.0),
              ),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(10.0),
                child: Image.asset(
                  imagem1,
                  fit: BoxFit.cover,
                ),
              ),
            ),
            const SizedBox(
              height: 15,
              width: 15,
            ),
            Container(
              height: 100,
              width: 235,
              decoration: BoxDecoration(
                color: Colors.yellow,
                borderRadius: BorderRadius.circular(10.0),
              ),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(10.0),
                child: Image.asset(
                  imagem2,
                  fit: BoxFit.cover,
                ),
              ),
            ),
          ],
        ),
        const SizedBox(
          height: 115,
          width: 15,
        ),
      ],
    );
  }
}
