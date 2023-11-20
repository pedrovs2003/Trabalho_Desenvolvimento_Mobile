import 'package:flex_color_scheme/flex_color_scheme.dart';
import 'package:flutter/material.dart';

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
      //themeMode: ThemeMode.light,
      home: InserirPedido(),
    );
  }
}

class InserirPedido extends StatefulWidget {
  const InserirPedido({super.key});

  @override
  _InserirPedidoState createState() => _InserirPedidoState();
}

class _InserirPedidoState extends State<InserirPedido> {
  // Controlador para o campo de entrada
  TextEditingController _opcaoController = TextEditingController();

  // Lista de opções para o DropdownButtonFormField
  List<String> categoria = ['Nenhum', 'Hamburguer', 'Pizza', 'Açai', 'Sorvete'];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 218, 223, 227),
      appBar: AppBar(
        title: const Text('Inserir Pedido'),
        centerTitle: true,
      ),
      body: Stack(
        children: [
          ListView(
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
                          const Positioned(
                            top: 158,
                            right: 60,
                            child: Text(
                              'Adicionar à Sacola',
                              style: TextStyle(color: Colors.red),
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
    );
  }
}
