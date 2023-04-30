import 'package:flutter/material.dart';

class DatosPage extends StatelessWidget {
  const DatosPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return FittedBox(
      fit: BoxFit.scaleDown,
      child: Center(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              width: 180,
              height: 80,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                color: const Color.fromRGBO(66, 64, 64, 1),
              ),
              child: const _Ingreso(),
            ),
            const SizedBox(
              width: 15,
            ),
            Container(
              width: 180,
              height: 80,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                color: const Color.fromRGBO(66, 64, 64, 1),
              ),
              child: const _Egreso(),
            ),
          ],
        ),
      ),
    );
  }
}

class _Egreso extends StatelessWidget {
  const _Egreso();

  @override
  Widget build(BuildContext context) {
    return const Row(
      children: [
        SizedBox(
          width: 15,
        ),
        CircleAvatar(
          backgroundColor: Colors.red,
          foregroundColor: Colors.black,
          child: Icon(Icons.arrow_downward_rounded),
        ),
        SizedBox(
          width: 12,
        ),
        Text(
          'Egresos\n\$ 0',
          style: TextStyle(
            fontSize: 20,
            decoration: TextDecoration.none,
            color: Colors.white,
          ),
        ),
      ],
    );
  }
}

class _Ingreso extends StatelessWidget {
  const _Ingreso();

  @override
  Widget build(BuildContext context) {
    return const Row(
      children: [
        SizedBox(
          width: 12,
        ),
        CircleAvatar(
          backgroundColor: Colors.green,
          foregroundColor: Colors.black,
          child: Icon(Icons.arrow_upward_rounded),
        ),
        SizedBox(
          width: 12,
        ),
        Text(
          'Ingresos\n\$ 1000',
          style: TextStyle(
            fontSize: 20,
            decoration: TextDecoration.none,
            color: Colors.white,
          ),
        ),
      ],
    );
  }
}
