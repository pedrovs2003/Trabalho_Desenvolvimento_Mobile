import 'dart:convert';
import 'dart:io';
import 'package:path_provider/path_provider.dart';

class ifood_data {
  Future<File> getFile() async {
    final directory = await getApplicationDocumentsDirectory();
    final filePath = '${directory.path}/pedidos.json';

    final file = File(filePath);

    if (!file.existsSync()) {
      print("Não Encontrou Arquivo");
      file.createSync();
      file.writeAsStringSync(jsonEncode([
        {
          "NumeroPedido": 1,
          "Nome": "Pedido 1",
          "Valor": 20.99,
          "Descricao": "Descrição do Pedido 1",
          "NomeLoja": "Loja A",
          "FotoLoja": "url_da_foto_loja_1",
          "IconType": "icone_tipo_1"
        },
        // ... outros pedidos
      ]));
    }

    return file;
  }

  Future<File> _getFile() async {
    final directory = await getApplicationDocumentsDirectory();
    print(directory);
    return File('${directory.path}/data.json');
  }

  Future<File> saveData(list) async {
    String data = json.encode(list);
    final file = await _getFile();
    return file.writeAsString(data);
  }

  Future<String?> readData() async {
    try {
      final file = await _getFile();
      return file.readAsString();
    } catch (e) {
      print(e);
      return null;
    }
  }
}
