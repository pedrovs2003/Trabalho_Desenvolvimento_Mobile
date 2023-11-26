import 'package:flex_color_scheme/flex_color_scheme.dart';
import 'package:flutter/material.dart';
import 'ifood_DadosPage.dart';
import 'ifood_PedidoDTO.dart';
import 'ifood_barraNavegacaoRodape.dart';
import 'ifood_conteudo_drawer.dart';
import 'ifood_itemPedido.dart';
import 'ifood_separaRetangulo.dart';

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
                'Delicioso hambúrguer recheado com todos os ingredientes \nirresistíveis em um só sanduíche.',
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
                'Tigela generosa com açaí, frutas frescas e irresistíveis \ncomplementos saudáveis.',
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
                'Massa crocante, molho rico, queijo derretido e deliciosos \ningredientes tradicionais perfeitos.',
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
              const SizedBox(
                height: 100,
              ),
            ],
          ),

          //Barra de navegação localizada no rodapé da pagina
          BarraNavegacaoRodape(context),
        ],
      ),
      drawer: Drawer(
        child: IfoodConteudoDrawer(),
      ),
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
