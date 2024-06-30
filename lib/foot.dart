import 'package:flutter/material.dart';
import 'package:pedro_site/useful/paleta.dart';
import 'package:url_launcher/url_launcher.dart';

class Foot extends StatelessWidget {
  const Foot({super.key});

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    final isMobile = width < 600;
    final isTablet = width >= 600 && width < 1300;

    return Container(
      color: PaletaCores.marrom,
      width: double.infinity,
      padding: EdgeInsets.symmetric(
        horizontal: isMobile
            ? 16
            : isTablet
                ? 100
                : 320,
        vertical: 20,
      ),
      child: Column(
        children: [
          const SizedBox(
            height: 32,
          ),
          corpo1(context, isMobile),
          const SizedBox(
            height: 32,
          ),
          corpo2(isMobile),
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

Widget corpo1(BuildContext context, bool isMobile) {
  return isMobile
      ? Column(
          children: [
            buildMenuItem('Emagrecimento', context),
            buildMenuItem('Reeducação alimentar', context),
            buildMenuItem('Aumento de performance', context),
            buildMenuItem('Redução de medidas', context),
            buildMenuItem('Hipertrofia', context),
          ],
        )
      : Row(
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
  final width = MediaQuery.of(context).size.width;

  final isTablet = width >= 600 && width < 1300;
  return Padding(
    padding: EdgeInsets.symmetric(horizontal: isTablet ? 8 : 8, vertical: 8.0),
    child: Text(
      text,
      style: TextStyle(
          fontSize: isTablet ? 12 : 16,
          color: Colors.white,
          fontFamily: 'Poppins',
          fontWeight: FontWeight.w300),
    ),
  );
}

Widget corpo2(bool isMobile) {
  return Padding(
    padding: EdgeInsets.symmetric(horizontal: isMobile ? 16 : 0),
    child: Container(
      padding: const EdgeInsets.symmetric(vertical: 20),
      decoration: const BoxDecoration(
          color: Color.fromARGB(255, 187, 166, 150),
          borderRadius: BorderRadius.all(Radius.circular(15))),
      child: Column(
        children: [
          isMobile
              ? Padding(
                  padding: const EdgeInsets.all(16),
                  child: Column(
                    children: [
                      const Card(
                          icone: Icons.email_rounded,
                          texto: 'pedrogois28@gmail.com'),
                      const SizedBox(
                        height: 16,
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
                          child: const Card(
                              icone: Icons.phone, texto: '(84) 98712-1596')),
                      const SizedBox(
                        height: 16,
                      ),
                      const Card(icone: Icons.location_on, texto: 'Endereços')
                    ],
                  ),
                )
              : Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Card(
                        icone: Icons.email_rounded,
                        texto: 'pedrogois28@gmail.com'),
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
                        child: const Card(
                            icone: Icons.phone, texto: '(84) 98712-1596')),
                    const SizedBox(
                      width: 16,
                    ),
                    const Card(icone: Icons.location_on, texto: 'Endereços'),
                    const SizedBox(
                      width: 16,
                    ),
                  ],
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
