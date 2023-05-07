import 'package:flutter/material.dart';

import 'package:flutter_expandable_fab/flutter_expandable_fab.dart';

import 'package:balance/page/perfil.dart';
import 'package:balance/widgets/tarjeta.dart';
import 'package:balance/widgets/datos.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  final String name = 'Christian';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        title: Text(
          'Hola, $name',
          style: const TextStyle(color: Colors.white),
        ),
        elevation: 0,
        backgroundColor: Colors.black,
        actions: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10),
            child: ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const PerfilPage(),
                  ),
                );
              },
              child: Text(
                name.substring(0, 1),
                style: const TextStyle(fontSize: 20),
              ),
            ),
          ),
        ],
      ),
      body: Column(
        children: [
          Expanded(
            child: Column(
              children: [
                Container(
                  color: Colors.black,
                ),
                const SizedBox(
                  height: 20,
                ),
                TarjetaPage(),
                const SizedBox(
                  height: 30,
                ),
                const Padding(
                  padding: EdgeInsets.symmetric(horizontal: 10),
                  child: DatosPage(),
                ),
              ],
            ),
          ),
          const SizedBox(
            height: 15,
          ),
          Expanded(
            child: ListView(children: [
              Container(
                height: 500,
                decoration: const BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(20),
                    topRight: Radius.circular(20),
                  ),
                ),
                child: const Padding(
                  padding: EdgeInsets.all(15),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Estadisticas',
                        style: TextStyle(
                          fontSize: 20,
                          decoration: TextDecoration.none,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ]),
          )
        ],
      ),
      floatingActionButtonLocation: ExpandableFab.location,
      floatingActionButton: ExpandableFab(
        type: ExpandableFabType.up,
        child: const Icon(Icons.add),
        expandedFabSize: ExpandableFabSize.regular,
        distance: 70,
        children: [
          FloatingActionButton.small(
            heroTag: null,
            onPressed: () {},
            child: const Icon(Icons.arrow_upward_rounded),
          ),
          FloatingActionButton.small(
            heroTag: null,
            onPressed: () {},
            child: const Icon(Icons.arrow_downward_rounded),
          )
        ],
      ),
    );
  }
}
