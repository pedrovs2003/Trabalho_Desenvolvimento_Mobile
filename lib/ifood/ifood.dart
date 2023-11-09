import 'package:flutter/material.dart';
import 'package:flutter_application_1/ifood/ifood_perfil_drawer.dart';
import 'package:flutter_application_1/ifood/ifood_busca.dart';


// ***********
//
// IFOOD
//
// ***********

class IfoodEntrada extends StatelessWidget {
  const IfoodEntrada({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Stack(
      children: [
        Container(
          color: Colors.white,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Column(
              children: [
                const SizedBox(
                  height: 200,
                ),
                const Text(
                  'Ifood',
                  style: TextStyle(
                      fontFamily: 'Montserrat',
                      fontSize: 50,
                      color: Colors.red),
                ),
                const SizedBox(
                  height: 200,
                ),
                const Text(
                  'Falta pouco pra matar \nsua fome!',
                  textAlign: TextAlign.center,
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
                const SizedBox(
                  height: 10,
                ),
                const Text('Como deseja continuar?'),
                const SizedBox(
                  height: 5,
                ),
                ElevatedButton.icon(
                  style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.all(Colors.blue),
                    padding:
                        MaterialStateProperty.all(const EdgeInsets.all(20)),
                    textStyle: MaterialStateProperty.all(
                        const TextStyle(fontSize: 10)),
                    shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                      RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(5.0),
                      ),
                    ),
                  ),
                  onPressed: () {
                    Navigator.pushNamed(context, '/HomePage');
                  },
                  icon: const Icon(
                    Icons.chrome_reader_mode,
                    color: Colors.white,
                  ),
                  label: const Text(
                    '          Continuar com o google         ',
                    style: TextStyle(fontSize: 15, color: Colors.white),
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (BuildContext context) =>
                                const IfoodDrawer()));
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor:
                        const Color.fromARGB(255, 255, 255, 255), // foreground
                    padding: const EdgeInsets.symmetric(
                        horizontal: 102, vertical: 20),
                    textStyle: const TextStyle(fontSize: 15),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(5.0),
                      side: const BorderSide(color: Colors.black, width: 0.5),
                    ),
                  ),
                  child: const Text(
                    'Outras opções',
                    style: TextStyle(color: Colors.black),
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (BuildContext context) =>
                                const IfoodDrawer()));
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.white10,
                    padding: const EdgeInsets.symmetric(
                        horizontal: 60, vertical: 20),
                    textStyle: const TextStyle(fontSize: 15),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(5.0),
                    ),
                  ),
                  child: const Text(
                    'Continuar como convidado',
                    style: TextStyle(color: Colors.black),
                  ),
                ),
              ],
            ),
          ],
        )
      ],
    ));
  }
}
