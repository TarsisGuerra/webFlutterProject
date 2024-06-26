import 'package:flutter/material.dart';
import 'package:pedro_site/useful/paleta.dart';

class Foot extends StatelessWidget {
  const Foot({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: PaletaCores.marrom,
      height: 250,
      width: double.infinity,
      child: Column(
        children: [
          const SizedBox(
            height: 32,
          ),
          corpo1(context),
          const SizedBox(
            height: 32,
          ),
          corpo2(),
          const SizedBox(
            height: 14,
          ),
          const Text(
            'Nutricionista em Natal',
            style: TextStyle(
                fontSize: 14,
                color: Colors.white,
                fontFamily: 'Poppins',
                fontWeight: FontWeight.w300),
          ),
          const SizedBox(
            height: 2,
          ),
          const Text(
            'Pedro Góis',
            style: TextStyle(
                fontSize: 14,
                color: Colors.white,
                fontFamily: 'Poppins',
                fontWeight: FontWeight.w300),
          )
        ],
      ),
    );
  }
}

Widget corpo1(BuildContext context) {
  return Row(
    mainAxisAlignment: MainAxisAlignment.center,
    children: [
      buildMenuItem('Home', context),
      buildMenuItem('Acompanhamento', context),
      buildMenuItem('Resultados', context),
      buildMenuItem('Depoimentos', context),
      buildMenuItem('Planos', context),
    ],
  );
}

Widget buildMenuItem(String text, BuildContext context) {
  return Padding(
    padding: const EdgeInsets.symmetric(horizontal: 12.0),
    child: Text(
      text,
      style: const TextStyle(
          fontSize: 16,
          color: Colors.white,
          fontFamily: 'Poppins',
          fontWeight: FontWeight.w300),
    ),
  );
}

Widget corpo2() {
  return Padding(
    padding: const EdgeInsets.symmetric(horizontal: 320),
    child: Container(
      padding: const EdgeInsets.symmetric(vertical: 20),
      decoration: const BoxDecoration(
          color: Color.fromARGB(255, 187, 166, 150),
          borderRadius: BorderRadius.all(Radius.circular(15))),
      child: const Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Card(icone: Icons.email_rounded, texto: 'pedrogois28@gmail.com'),
          SizedBox(
            width: 16,
          ),
          Card(icone: Icons.phone, texto: '(84) 98712-1596'),
          SizedBox(
            width: 16,
          ),
          Card(icone: Icons.location_on, texto: 'Endereços'),
          SizedBox(
            width: 16,
          ),
        ],
      ),
    ),
  );
}

class Card extends StatelessWidget {
  final IconData icone;
  final String texto;
  const Card({super.key, required this.icone, required this.texto});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          border: Border.all(color: PaletaCores.marrom),
          borderRadius: BorderRadius.circular(6)),
      child: Padding(
        padding: const EdgeInsets.all(12),
        child: Row(
          children: [
            Icon(
              icone,
              color: PaletaCores.marrom,
            ),
            const SizedBox(
              width: 8,
            ),
            Text(
              texto,
              style: const TextStyle(fontSize: 18, color: PaletaCores.marrom),
            )
          ],
        ),
      ),
    );
  }
}
