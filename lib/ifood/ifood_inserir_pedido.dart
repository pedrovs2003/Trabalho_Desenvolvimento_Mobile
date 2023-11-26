import 'package:flex_color_scheme/flex_color_scheme.dart';
import 'package:flutter/material.dart';

import 'DadosPage.dart';
import 'PedidoDTO.dart';
import 'ifood_conteudo_drawer.dart';

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: FlexThemeData.light(scheme: FlexScheme.amber),
      darkTheme: FlexThemeData.dark(scheme: FlexScheme.amber),
      themeMode: ThemeMode.dark,
      home: const IfoodInserirPedido(),
    );
  }
}

class IfoodInserirPedido extends StatefulWidget {
  const IfoodInserirPedido({super.key});

  @override
  _InserirPedidoState createState() => _InserirPedidoState();
}

class _InserirPedidoState extends State<IfoodInserirPedido> {
  //ifood_data db = ifood_data();
  // @override
  // void initState() {
  //   super.initState();

  //   db.readData().then(
  //     (data) {
  //       setState(() {
  //         _listaPedidos = json.decode(data!);
  //       });
  //     },
  //   );
  // }

  // Controlador para o campo de entrada
  int _quantidadesXtudo = 0;
  int _quantidadesPizzas = 0;
  int _quantidadesAcai = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 218, 223, 227),
      appBar: AppBar(
          backgroundColor: Colors.red,
          title: const Text('Inserir Pedido',
              style: TextStyle(color: Colors.white)),
          centerTitle: true,
          iconTheme: const IconThemeData(color: Colors.white)),
      body: Stack(
        children: [
          ListView(
            scrollDirection: Axis.vertical,
            children: [
              const SeparaRetangulo(),
              itemPedido(
                'X tudo',
                'descrição xtudo...',
                Positioned(
                  top: 158,
                  right: 60,
                  child: ElevatedButton(
                    onPressed: () {
                      _quantidadesXtudo++;
                    },
                    child: const Text('Adicionar Item'),
                  ),
                ),
              ),
              const SeparaRetangulo(),

              itemPedido(
                'Açai',
                'descrição Açai...',
                Positioned(
                  top: 158,
                  right: 60,
                  child: ElevatedButton(
                    onPressed: () {
                      _quantidadesPizzas++;
                    },
                    child: const Text('Adicionar Item'),
                  ),
                ),
              ),
              const SeparaRetangulo(),

              itemPedido(
                'Pizza',
                'descrição Pizza...',
                Positioned(
                  top: 158,
                  right: 60,
                  child: ElevatedButton(
                    onPressed: () {
                      _quantidadesAcai++;
                    },
                    child: const Text('Adicionar Item'),
                  ),
                ),
              ),

              //Fim do retangulo do pedido
              const SeparaRetangulo(),

              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Container(
                    margin: const EdgeInsets.all(20),
                    width: 200, // Ajuste conforme necessário
                    height: 60, // Ajuste conforme necessário
                    child: ElevatedButton(
                      onPressed: () {
                        _quantidadesAcai =
                            _quantidadesPizzas = _quantidadesXtudo = 0;
                      },
                      style: ElevatedButton.styleFrom(
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(8.0),
                        ),
                        padding: const EdgeInsets.all(
                            0), // Remova o padding do ElevatedButton
                        backgroundColor: Colors.red,
                      ),
                      child: const Center(
                        child: Text(
                          'Redefinir Pedido',
                          style: TextStyle(
                            fontSize: 20,
                            color: Colors.white,
                          ),
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                  Container(
                    margin: const EdgeInsets.all(20),
                    width: 200,
                    height: 60,
                    child: ElevatedButton(
                      onPressed: () {
                        String meuPedido = 'Meu Pedido: \n';
                        double preco = 0;
                        if (_quantidadesAcai > 0) {
                          meuPedido += "Açaí Turbinado - ${_quantidadesAcai}x";
                          preco += _quantidadesAcai * 5;
                        }

                        if (_quantidadesPizzas > 0) {
                          meuPedido +=
                              "\nPizza do Fabão - ${_quantidadesPizzas}x";
                          preco += _quantidadesPizzas * 23.90;
                        }

                        if (_quantidadesXtudo > 0) {
                          meuPedido += "\nX Tudão - ${_quantidadesXtudo}x";
                          preco += _quantidadesXtudo * 17.99;
                        }

                        List<PedidoDTO> pedido = [];
                        PedidoDTO meuPedidoAtual =
                            new PedidoDTO(meuPedido, preco);
                        pedido.add(meuPedidoAtual);

                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => DadosPage(pedido)),
                        );

                        // setState(() {
                        //   Map<String, dynamic> novaTarefa = {};
                        //   novaTarefa['descricao'] = meuPedido;
                        //   novaTarefa['ok'] = false;
                        //   _listaPedidos.add(novaTarefa);
                        //   db.saveData(_listaPedidos);
                        // });

                        // db.readData().then(
                        //   (data) {
                        //     setState(() {
                        //       _listaPedidos = json.decode(data!);
                        //       print(_listaPedidos);
                        //     });
                        //   },
                        // );

                        _quantidadesAcai =
                            _quantidadesPizzas = _quantidadesXtudo = 0;
                      },
                      style: ElevatedButton.styleFrom(
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(8.0),
                        ),
                        padding: const EdgeInsets.all(
                            0), // Remova o padding do ElevatedButton
                        backgroundColor: Colors.green,
                      ),
                      child: const Center(
                        child: Text(
                          'Finalizar Pedido',
                          style: TextStyle(color: Colors.white, fontSize: 20),
                        ),
                      ),
                    ),
                  ),
                ],
              ),

              const Row(
                children: [
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
                                icon: const Icon(Icons.format_list_numbered),
                                onPressed: () {
                                  // ...
                                },
                              ),
                              const Text('Pedidos')
                            ],
                          ),
                        ],
                      ),
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
    );
  }

  Row itemPedido(String item, String descricao, dynamic botao) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Container(
          height: 200,
          width: 450,
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
                Positioned(
                  top: 20,
                  left: 70,
                  child: Text(
                    item,
                    style: const TextStyle(
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
                botao,
                // Ícone de seta para a direita
                const Positioned(
                  top: 20,
                  right: 10,
                  child: Stack(
                    children: [
                      Icon(
                        Icons.add,
                        size: 24,
                        color: Colors.black,
                      ),
                    ],
                  ),
                ),
                Positioned(
                  top: 95,
                  left: 70,
                  child: Text(
                    descricao,
                    style: const TextStyle(
                      fontSize: 11,
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

  //  void _onSubmit(context, texto) {
  //   if (texto.toString().isNotEmpty) {
  //     setState(() {
  //       Map<String, dynamic> novaTarefa = {};
  //       novaTarefa['pedido'] = _tarefaController.text;
  //       _tarefaController.clear();
  //       novaTarefa['ok'] = false;
  //       _listaPedidos.add(novaTarefa);
  //       db.saveData(_listaPedidos);
  //     });
  //     print('Tarefa adicionada!!!!');
  //   } else {
  //     print('Sem Tarefa preenchida');
  //   }
  // }
}

class SeparaRetangulo extends StatelessWidget {
  const SeparaRetangulo({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const SizedBox(
      height: 10,
    );
  }
}
