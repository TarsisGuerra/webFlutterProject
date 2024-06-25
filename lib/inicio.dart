import 'package:flutter/material.dart';
import 'package:pedro_site/useful/paleta.dart';
import 'package:social_media_buttons/social_media_icons.dart';

class Initial extends StatefulWidget {
  const Initial({super.key});

  @override
  State<Initial> createState() => _InitialState();
}

class _InitialState extends State<Initial> {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: Column(
        children: [
          SizedBox(
              height: MediaQuery.of(context).size.height * 0.7,
              child: corpo1(context)),
          Container(
            child: Column(
              children: [
                corpo2(context),
                const SizedBox(height: 40),
                informativos(context),
              ],
            ),
          )
        ],
      ),
    );
  }
}

Widget corpo1(BuildContext context) {
  final width = MediaQuery.of(context).size.width;
  final isMobile = width < 600;
  final isTablet = width >= 600 && width < 1200;

  return Stack(
    children: [
      Padding(
        padding: const EdgeInsets.only(top: 100),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: EdgeInsets.only(
                  left: isMobile
                      ? 20
                      : isTablet
                          ? 100
                          : 200),
              child: Row(
                children: [
                  Text(
                    'Olá, sou o ',
                    style: TextStyle(
                        fontSize: isMobile
                            ? 20
                            : isTablet
                                ? 26
                                : 26,
                        color: PaletaCores.marrom),
                  ),
                  Text(
                    'nutricionista',
                    style: TextStyle(
                        fontSize: isMobile
                            ? 20
                            : isTablet
                                ? 26
                                : 26,
                        color: PaletaCores.marrom,
                        fontWeight: FontWeight.w600),
                  ),
                ],
              ),
            ),
            Container(
              width: double.infinity,
              height: MediaQuery.of(context).size.height * 0.15,
              decoration: const BoxDecoration(
                color: PaletaCores.marrom,
              ),
              child: Padding(
                padding: EdgeInsets.only(
                    left: isMobile
                        ? 20
                        : isTablet
                            ? 100
                            : 200),
                child: FittedBox(
                  alignment: Alignment.centerLeft,
                  fit: BoxFit.scaleDown,
                  child: Text(
                    'PEDRO GÓIS',
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: isMobile
                            ? 62
                            : isTablet
                                ? 92
                                : 92,
                        fontFamily: 'Poppins',
                        fontWeight: FontWeight.w100),
                  ),
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(
                  left: isMobile
                      ? 20
                      : isTablet
                          ? 100
                          : 200),
              child: Row(
                children: [
                  Text(
                    'Especialista em ',
                    style: TextStyle(
                        fontSize: isMobile
                            ? 20
                            : isTablet
                                ? 26
                                : 26,
                        color: PaletaCores.marrom),
                  ),
                  Text(
                    'Emagrecimento',
                    style: TextStyle(
                        fontSize: isMobile
                            ? 20
                            : isTablet
                                ? 26
                                : 26,
                        color: PaletaCores.marrom,
                        fontWeight: FontWeight.w600),
                  ),
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.only(
                  left: isMobile
                      ? 20
                      : isTablet
                          ? 100
                          : 200,
                  top: 50),
              child: Container(
                padding: const EdgeInsets.only(
                    left: 25, right: 25, top: 12, bottom: 12),
                decoration: BoxDecoration(
                    color: PaletaCores.marrom,
                    borderRadius: BorderRadius.circular(30)),
                child: const Text(
                  'Entre em Contato',
                  style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.w300,
                      fontSize: 16,
                      fontFamily: 'Poppins'),
                ),
              ),
            ),
          ],
        ),
      ),
      Positioned(
          top: isMobile
              ? 10
              : isTablet
                  ? 20
                  : 40,
          right: isMobile
              ? 20
              : isTablet
                  ? 50
                  : 200,
          width: isMobile
              ? MediaQuery.of(context).size.width * 0.2
              : isTablet
                  ? MediaQuery.of(context).size.width * 0.3
                  : MediaQuery.of(context).size.width * 0.28,
          child: const Column(
            children: [
              ClipOval(
                child: Image(
                  image: AssetImage('assets/images/imagem.png'),
                ),
              ),
              SizedBox(
                height: 12,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(
                    SocialMediaIcons.instagram,
                    color: PaletaCores.marrom,
                  ),
                  SizedBox(
                    width: 12,
                  ),
                  Icon(
                    SocialMediaIcons.linkedin,
                    color: PaletaCores.marrom,
                  )
                ],
              )
            ],
          )),
    ],
  );
}

Widget corpo2(BuildContext context) {
  final width = MediaQuery.of(context).size.width;
  final isMobile = width < 600;
  final isTablet = width >= 600 && width < 1200;

  return Padding(
    padding: isMobile
        ? const EdgeInsets.only(left: 20)
        : const EdgeInsets.only(left: 20),
    child: const Column(
      children: [
        Text(
          'Acompanhamento Personalizado',
          style: TextStyle(
              fontFamily: 'Poppins',
              fontSize: 36,
              fontWeight: FontWeight.w500,
              color: PaletaCores.marrom),
        ),
        Text(
          'Todos os detalhes pensados para atingir seus objetivos.',
          style: TextStyle(
              fontFamily: 'Poppins',
              fontSize: 18,
              fontWeight: FontWeight.normal,
              color: PaletaCores.marrom),
        ),
      ],
    ),
  );
}

Widget informativos(BuildContext context) {
  final List<Map<String, dynamic>> items = [
    {
      "title": "Questionário Pré-consulta",
      "description":
          "Você receberá um e-mail para preencher algumas informações, antes da consulta.",
      "icon": Icons.assignment
    },
    {
      "title": "Consulta",
      "description":
          "O atendimento pode ser feito de forma presencial ou on-line, tendo uma duração média de 30-50min.",
      "icon": Icons.people_alt
    },
    {
      "title": "Dieta",
      "description":
          "O plano alimentar é elaborado na consulta para criar uma dieta flexível e agradável (de acordo com suas necessidades e objetivos), incluindo suplementação e exames bioquímicos.",
      "icon": Icons.fastfood
    },
    {
      "title": "Avaliação Antropométrica",
      "description":
          "Realizamos as medidas da composição física e faremos o comparativo mês a mês dos resultados.",
      "icon": Icons.straighten
    },
    {
      "title": "Suporte Pós-consulta",
      "description":
          "O paciente recebe suporte semanal para dar feedback, mantendo um ritmo constante de evolução e orientação.",
      "icon": Icons.support_agent
    },
    {
      "title": "Acesso ao App Exclusivo",
      "description":
          "O paciente acessa o app Dietbox com dieta, suplementação, lista de compras, materiais de nutrição e área para compartilhar refeições com o nutricionista.",
      "icon": Icons.mobile_friendly
    },
  ];

  final width = MediaQuery.of(context).size.width;
  final isMobile = width < 600;
  final isTablet = width >= 600 && width < 1200;

  return GridView.builder(
    padding: EdgeInsets.symmetric(
        horizontal: isMobile
            ? 20
            : isTablet
                ? 100
                : 200),
    gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
      crossAxisCount: isMobile
          ? 1
          : isTablet
              ? 2
              : 3,
      childAspectRatio: isMobile
          ? 3 / 2
          : isTablet
              ? 2.9 / 2
              : 2.9 / 2,
      crossAxisSpacing: 10,
      mainAxisSpacing: 10,
    ),
    itemCount: items.length,
    shrinkWrap: true,
    physics: const NeverScrollableScrollPhysics(),
    itemBuilder: (context, index) {
      return Container(
        decoration: BoxDecoration(
            color: Colors.white,
            border: Border.all(color: PaletaCores.marrom),
            borderRadius: BorderRadius.circular(10)),
        child: Card(
          color: Colors.white,
          elevation: 0,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10),
          ),
          child: Padding(
            padding: const EdgeInsets.only(top: 25, left: 12),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Icon(items[index]['icon'], size: 40, color: PaletaCores.marrom),
                const SizedBox(height: 10),
                Text(
                  items[index]['title']!,
                  style: const TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(height: 10),
                Text(
                  items[index]['description']!,
                  style: TextStyle(
                      fontSize: isMobile
                          ? 16
                          : isTablet
                              ? 14
                              : 14),
                ),
              ],
            ),
          ),
        ),
      );
    },
  );
}
