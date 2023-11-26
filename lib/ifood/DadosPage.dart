import 'package:flutter/material.dart';
import 'PedidoDTO.dart';

class DadosPage extends StatelessWidget {
  final List<PedidoDTO> meuPedido;
  const DadosPage(this.meuPedido);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Últimos Pedidos',
          style: TextStyle(color: Colors.white),
        ),
        centerTitle: true,
        iconTheme: const IconThemeData(
          color: Colors.white,
        ),
        backgroundColor: Colors.red,
      ),
      body: _body(),
    );
  }

  Column _body() {
    return Column(
      children: [
        const SizedBox(
          height: 20,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              height: 185,
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
                    // Texto 'Peça de novo'
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
                    // Texto '1 Cheddar Burguer + Fritas'
                    Positioned(
                      top: 30,
                      left: 10,
                      child: Text(
                        '${meuPedido[0].descricao} no valor de ${meuPedido[0].preco}',
                        style: const TextStyle(
                          fontSize: 14,
                        ),
                      ),
                    ),
                    // Container na parte inferior
                    Align(
                      alignment: Alignment.bottomCenter,
                      child: Container(
                        margin: const EdgeInsets.only(
                            bottom:
                                15), // Ajuste a distância entre o Container vermelho e o bottom
                        height: 40,
                        width: 400,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(
                              7.0), // Bordas arredondadas
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
      ],
    );
  }
}
