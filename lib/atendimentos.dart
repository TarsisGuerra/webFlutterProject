import 'package:flutter/material.dart';
import 'package:pedro_site/useful/paleta.dart';
import 'package:url_launcher/url_launcher.dart';

class Atendimentos extends StatelessWidget {
  const Atendimentos({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    final isMobile = width < 600;
    final isTablet = width >= 600 && width < 1300;

    return Container(
      color: Colors.white,
      padding: EdgeInsets.symmetric(
          horizontal: isMobile
              ? 16
              : isTablet
                  ? 100
                  : 300),
      child: Column(
        children: [
          cabecalho(),
          const SizedBox(
            height: 40,
          ),
          cards(isMobile: isMobile),
        ],
      ),
    );
  }
}

Widget cabecalho() {
  return const Column(
    children: [
      Text(
        'Atendimentos',
        style: TextStyle(
          fontFamily: 'Poppins',
          fontSize: 36,
          fontWeight: FontWeight.w500,
          color: PaletaCores.marrom,
        ),
      ),
      Text(
        'Escolha a melhor forma de atendimento.',
        style: TextStyle(
          fontFamily: 'Poppins',
          fontSize: 18,
          fontWeight: FontWeight.normal,
          color: PaletaCores.marrom,
        ),
      ),
    ],
  );
}

Widget cards({required bool isMobile}) {
  return isMobile
      ? Column(
          children: [
            atendimentoCard(
              title: 'Online',
              description1: 'Como?',
              description2: 'Atendimento Remoto',
              buttonText: 'Agendar',
              url: 'http://wa.me/5584987121596',
            ),
            const SizedBox(
              height: 20,
            ),
            atendimentoCard(
              title: 'Presencial',
              description1: 'Onde?',
              description2: 'Ponta Negra Center',
              description3: 'Rua da Palestina, 99.\n Ponta Negra/RN',
            ),
          ],
        )
      : Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Expanded(
              child: atendimentoCard(
                title: 'Online',
                description1: 'Como?',
                description2: 'Atendimento Remoto',
                buttonText: 'Agendar',
                url: 'http://wa.me/5584987121596',
              ),
            ),
            const SizedBox(
              width: 20,
            ),
            Expanded(
              child: atendimentoCard(
                title: 'Presencial',
                description1: 'Onde?',
                description2: 'Ponta Negra Center',
                description3: 'Rua da Palestina, 99. \n Ponta Negra/RN',
              ),
            ),
          ],
        );
}

Widget atendimentoCard({
  required String title,
  required String description1,
  required String description2,
  String? description3,
  String? buttonText,
  String? url,
}) {
  return Container(
    width: 450,
    height: 429,
    decoration: BoxDecoration(
      borderRadius: BorderRadius.circular(15),
      border: Border.all(color: PaletaCores.marrom),
    ),
    child: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          title,
          style: const TextStyle(
            fontSize: 32,
            color: PaletaCores.marrom,
            fontWeight: FontWeight.w600,
            fontFamily: 'Poppins',
          ),
        ),
        Text(
          description1,
          style: const TextStyle(
            fontSize: 26,
            color: PaletaCores.marrom,
            fontFamily: 'Poppins',
          ),
        ),
        const SizedBox(
          height: 40,
        ),
        Container(
          decoration: BoxDecoration(
            color: const Color.fromARGB(255, 187, 166, 150),
            borderRadius: BorderRadius.circular(15),
          ),
          child: Padding(
            padding: const EdgeInsets.symmetric(vertical: 8, horizontal: 24),
            child: Text(
              description2,
              style: const TextStyle(
                fontSize: 22,
                color: PaletaCores.marrom,
                fontFamily: 'Poppins',
              ),
            ),
          ),
        ),
        if (description3 != null) ...[
          const SizedBox(
            height: 20,
          ),
          Container(
            decoration: BoxDecoration(
              color: const Color.fromARGB(255, 187, 166, 150),
              borderRadius: BorderRadius.circular(15),
            ),
            child: Padding(
              padding: const EdgeInsets.symmetric(vertical: 8, horizontal: 24),
              child: Text(
                description3,
                style: const TextStyle(
                  fontSize: 18,
                  color: PaletaCores.marrom,
                  fontFamily: 'Poppins',
                ),
              ),
            ),
          ),
        ],
        if (buttonText != null && url != null) ...[
          const SizedBox(
            height: 20,
          ),
          Container(
            decoration: BoxDecoration(
              color: PaletaCores.marrom,
              borderRadius: BorderRadius.circular(30),
            ),
            child: Padding(
              padding: const EdgeInsets.symmetric(vertical: 8, horizontal: 24),
              child: GestureDetector(
                onTap: () async {
                  // ignore: deprecated_member_use
                  if (await canLaunch(url)) {
                    // ignore: deprecated_member_use
                    await launch(url);
                  } else {
                    throw 'Could not launch $url';
                  }
                },
                child: Text(
                  buttonText,
                  style: const TextStyle(
                    fontSize: 18,
                    color: Colors.white,
                    fontWeight: FontWeight.w300,
                    fontFamily: 'Poppins',
                  ),
                ),
              ),
            ),
          ),
        ],
      ],
    ),
  );
}
