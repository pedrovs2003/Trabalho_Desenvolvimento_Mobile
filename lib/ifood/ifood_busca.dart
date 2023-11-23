import 'package:flutter/material.dart';

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
                SizedBox(
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
                  padding: EdgeInsets.only(
                      left: 55.0), // Adiciona espaçamento à esquerda
                  child: const Text(
                    'Categorias',
                    style: TextStyle(
                      fontSize: 25.0, // Ajusta o tamanho da fonte
                      fontWeight:
                          FontWeight.bold, // Adiciona negrito se desejar
                    ),
                  ),
                ),
                categoria(context, 'assets/images/bebidas.png',
                    'assets/images/mercado.png'),
                categoria(context, "assets/images/flutter.png",
                    "assets/images/flutter.png"),
                categoria(context, "assets/images/flutter.png",
                    "assets/images/flutter.png"),
                categoria(context, "assets/images/flutter.png",
                    "assets/images/flutter.png"),
                categoria(context, "assets/images/flutter.png",
                    "assets/images/flutter.png"),
                categoria(context, "assets/images/flutter.png",
                    "assets/images/flutter.png"),
                categoria(context, "assets/images/flutter.png",
                    "assets/images/flutter.png"),
                categoria(context, "assets/images/flutter.png",
                    "assets/images/flutter.png"),
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

  //   'Bebidas',
  //   'Mercado',
  //   'Farmácia',
  //   'Pet',
  //   "Shopping",
  //   "Restaurante Super",
  //   "Gourmet",
  //   "Pizza",
  //   "Lanches",
  //   "Japonesa",
  //   "Brasileira",
  //   "Chinesa",
  //   "Saudável",
  //   "Crepes e Panquecas",

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
            Container(
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
        Container(
          height: 115,
          width: 15,
        ),
      ],
    );
  }
}
