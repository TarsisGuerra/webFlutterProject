import 'package:flutter/material.dart';
import 'package:pedro_site/useful/paleta.dart';
import 'package:url_launcher/url_launcher.dart';

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
      buildMenuItem('Emagrecimento', context),
      buildMenuItem('Reeducação alimentar', context),
      buildMenuItem('Aumento de performance', context),
      buildMenuItem('Redução de medidas', context),
      buildMenuItem('Hipertrofia', context),
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
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Card(
              icone: Icons.email_rounded, texto: 'pedrogois28@gmail.com'),
          const SizedBox(
            width: 16,
          ),
          GestureDetector(
              onTap: () async {
                const url = 'http://wa.me/5584987121596';
                // ignore: deprecated_member_use
                if (await canLaunch(url)) {
                  // ignore: deprecated_member_use
                  await launch(url);
                } else {
                  throw 'Could not launch $url';
                }
              },
              child: const Card(icone: Icons.phone, texto: '(84) 98712-1596')),
          const SizedBox(
            width: 16,
          ),
          const Card(icone: Icons.location_on, texto: 'Endereços'),
          const SizedBox(
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
