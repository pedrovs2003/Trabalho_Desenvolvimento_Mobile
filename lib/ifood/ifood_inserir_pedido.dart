import 'dart:convert';

import 'package:flex_color_scheme/flex_color_scheme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_1/ifood/ifood_data.dart';

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
      home: IfoodInserirPedido(),
    );
  }
}

class IfoodInserirPedido extends StatefulWidget {
  const IfoodInserirPedido({super.key});

  @override
  _InserirPedidoState createState() => _InserirPedidoState();
}

class _InserirPedidoState extends State<IfoodInserirPedido> {
  List _listaPedidos = [];
  ifood_data db = ifood_data();

  @override
  void initState() {
    super.initState();

    db.readData().then(
      (data) {
        setState(() {
          _listaPedidos = json.decode(data!);
        });
      },
    );
  }

  // Controlador para o campo de entrada
  TextEditingController _opcaoController = TextEditingController();
  int _quantidadesXtudao = 0;
  int _quantidadesPizzas = 0;
  int _quantidadesAcai = 0;

  // Lista de opções para o DropdownButtonFormField
  List<String> categoria = ['Nenhum', 'Hamburguer', 'Pizza', 'Açai', 'Sorvete'];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 218, 223, 227),
      appBar: AppBar(
          backgroundColor: Colors.red,
          title: const Text('Inserir Pedido',
              style: TextStyle(color: Colors.white)),
          centerTitle: true,
          iconTheme: IconThemeData(color: Colors.white)),
      body: Stack(
        children: [
          ListView(
            scrollDirection: Axis.vertical,
            children: [
              DropdownButtonFormField<String>(
                value: categoria.first,
                items: categoria.map((String opcao) {
                  return DropdownMenuItem<String>(
                    value: opcao,
                    child: Text(opcao),
                  );
                }).toList(),
                onChanged: (String? selecionada) {
                  //Salva opção selecionada em uma mapa no banco
                },
                decoration: InputDecoration(
                  labelText: 'Selecione uma Categoria: ',
                ),
              ),

              SeparaRetangulo(),
              /////////// Retângulo
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
                          const Positioned(
                            top: 20,
                            left: 70,
                            child: Text(
                              'X tudão',
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
                          Positioned(
                            top: 158,
                            right: 60,
                            child: ElevatedButton(
                              onPressed: () {
                                _quantidadesXtudao++;
                              },
                              child: Text('Adicionar Item'),
                            ),
                          ),
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
                          const Positioned(
                            top: 95,
                            left: 70,
                            child: Text(
                              'Pão, 2 Carnes Bovinas, Ovo, Frango Grelhado, Batata Palha, Bancon. \nAcompanha Fritas Médias.',
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

              SeparaRetangulo(),

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
                          const Positioned(
                            top: 20,
                            left: 70,
                            child: Text(
                              'Açaí Turbinado',
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
                          Positioned(
                            top: 158,
                            right: 60,
                            child: ElevatedButton(
                              onPressed: () {
                                _quantidadesAcai++;
                              },
                              child: Text('Adicionar Item'),
                            ),
                          ),
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
                          const Positioned(
                            top: 95,
                            left: 70,
                            child: Text(
                              'Açaí com Granola, Banana, Leite Condensado e Morango',
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

              SeparaRetangulo(),

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
                          const Positioned(
                            top: 20,
                            left: 70,
                            child: Text(
                              'Pizza Du Fabão',
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
                          Positioned(
                            top: 158,
                            right: 60,
                            child: ElevatedButton(
                              onPressed: () {
                                _quantidadesPizzas++;
                              },
                              child: Text('Adicionar Item'),
                            ),
                          ),
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
                          const Positioned(
                            top: 95,
                            left: 70,
                            child: Text(
                              'Pizza Prime, Calabresa, Queijo e Borda Recheada',
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

              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Container(
                    margin: EdgeInsets.all(20),
                    width: 200, // Ajuste conforme necessário
                    height: 60, // Ajuste conforme necessário
                    child: ElevatedButton(
                      onPressed: () {
                        _quantidadesAcai =
                            _quantidadesPizzas = _quantidadesXtudao = 0;
                      },
                      style: ElevatedButton.styleFrom(
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(8.0),
                        ),
                        padding: EdgeInsets.all(
                            0), // Remova o padding do ElevatedButton
                        backgroundColor: Colors.red,
                      ),
                      child: Center(
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
                  SizedBox(
                    width: 10,
                  ),
                  Container(
                    margin: EdgeInsets.all(20),
                    width: 200,
                    height: 60,
                    child: ElevatedButton(
                      onPressed: () {
                        String meuPedido = 'Meu Pedido: \n';
                        if (_quantidadesAcai > 0) {
                          meuPedido += "Açaí Turbinado - ${_quantidadesAcai}x";
                        }

                        if (_quantidadesPizzas > 0) {
                          // Adicione o código necessário para pizzas
                        }

                        if (_quantidadesXtudao > 0) {
                          // Adicione o código necessário para Xtudão
                        }

                        setState(() {
                          Map<String, dynamic> novaTarefa = {};
                          novaTarefa['descricao'] = meuPedido;
                          novaTarefa['ok'] = false;
                          _listaPedidos.add(novaTarefa);
                          db.saveData(_listaPedidos);
                        });

                        db.readData().then(
                          (data) {
                            setState(() {
                              _listaPedidos = json.decode(data!);
                              print(_listaPedidos);
                            });
                          },
                        );

                        _quantidadesAcai =
                            _quantidadesPizzas = _quantidadesXtudao = 0;
                      },
                      style: ElevatedButton.styleFrom(
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(8.0),
                        ),
                        padding: EdgeInsets.all(
                            0), // Remova o padding do ElevatedButton
                        backgroundColor: Colors.green,
                      ),
                      child: Center(
                        child: Text(
                          'Finalizar Pedido',
                          style: TextStyle(color: Colors.white, fontSize: 20),
                        ),
                      ),
                    ),
                  ),
                ],
              ),

              Row(
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
            const Text('_______________'),
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
    return SizedBox(
      height: 10,
    );
  }
}
