import 'package:flutter/material.dart';
import 'package:pedro_site/useful/paleta.dart';

class Resultados extends StatelessWidget {
  const Resultados({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      width: double.infinity,
      height: 600,
      child: Column(
        children: [cabecalho(context)],
      ),
    );
  }
}

Widget cabecalho(BuildContext context) {
  final width = MediaQuery.of(context).size.width;
  final isMobile = width < 600;
  final isTablet = width >= 600 && width < 1200;

  return Padding(
    padding: isMobile
        ? const EdgeInsets.only(top: 40, left: 20)
        : const EdgeInsets.only(top: 40),
    child: const Column(
      children: [
        Text(
          'Resultados',
          style: TextStyle(
              fontFamily: 'Poppins',
              fontSize: 36,
              fontWeight: FontWeight.w500,
              color: PaletaCores.marrom),
        ),
        Text(
          'Resultados reais com uma dieta personalizada: sua saúde e bem-estar em primeiro lugar!',
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

//Widget imagensResultados() {
///  return
//}

