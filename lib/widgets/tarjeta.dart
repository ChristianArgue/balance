import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class TarjetaPage extends StatelessWidget {
  TarjetaPage({Key? key}) : super(key: key);

  final now = DateTime.now();
  final formatter = DateFormat('EEEE, d MMMM yyyy', 'es');

  @override
  Widget build(BuildContext context) {
    final formattedDate = formatter.format(now).toUpperCase();

    return Center(
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 30),
        width: double.infinity,
        child: Container(
          decoration: BoxDecoration(
            color: const Color.fromRGBO(66, 64, 64, 1),
            borderRadius: BorderRadius.circular(20),
          ),
          child: Padding(
            padding: const EdgeInsets.all(20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  formattedDate,
                  style: const TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                const Text(
                  'Balance Total',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 18,
                    decoration: TextDecoration.none,
                    color: Colors.white,
                  ),
                ),
                const SizedBox(
                  height: 30,
                ),
                const Text(
                  '\$ 1000',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 20,
                    decoration: TextDecoration.none,
                    color: Colors.white,
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
