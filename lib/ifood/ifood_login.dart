import 'package:flutter/material.dart';
import 'package:flutter_application_1/ifood/ifood_perfil_drawer.dart';

class IfoodEntrada extends StatelessWidget {
  const IfoodEntrada({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Stack(
      children: [
        SizedBox(
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
          child: Image.asset(
            "assets/images/fundo.png",
            fit: BoxFit.cover,
          ),
        ),
        Container(
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
          color: Colors.white10,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Column(
              children: [
                const SizedBox(
                  height: 480,
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
                  icon: Container(
                      color: Colors.white,
                      height: 20,
                      width: 20,
                      child: SizedBox(
                        height: 15,
                        width: 15,
                        child: Image.asset(
                          "assets/images/logoGoogle.png",
                          fit: BoxFit.cover,
                        ),
                      )),
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
