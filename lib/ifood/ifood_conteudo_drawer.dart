import 'package:flutter/material.dart';

Column IfoodConteudoDrawer() {
  return Column(
    children: [
      SizedBox(
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
  );
}
