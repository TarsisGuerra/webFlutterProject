import 'package:flutter/material.dart';
import 'package:pedro_site/useful/paleta.dart';

class Acompanhamento extends StatelessWidget {
  const Acompanhamento({super.key});

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    final isMobile = width < 600;
    final isTablet = width >= 600 && width < 1200;
    return Center(
      child: Container(
        color: Colors.white,
        child: Padding(
          padding: isMobile
              ? const EdgeInsets.only(left: 20)
              : const EdgeInsets.only(left: 20, top: 40),
          child: Column(
            children: [
              const Text(
                'Acompanhamento Personalizado',
                style: TextStyle(
                    fontFamily: 'Poppins',
                    fontSize: 36,
                    fontWeight: FontWeight.w500,
                    color: PaletaCores.marrom),
              ),
              const Text(
                'Todos os detalhes pensados para atingir seus objetivos.',
                style: TextStyle(
                    fontFamily: 'Poppins',
                    fontSize: 18,
                    fontWeight: FontWeight.normal,
                    color: PaletaCores.marrom),
              ),
              const SizedBox(
                height: 40,
              ),
              informativos(context)
            ],
          ),
        ),
      ),
    );
  }
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
              : 3.2 / 2,
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
