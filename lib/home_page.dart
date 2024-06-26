import 'package:flutter/material.dart';
import 'package:pedro_site/atendimentos.dart';
import 'package:pedro_site/contato.dart';
import 'package:pedro_site/depoimentos.dart';
import 'package:pedro_site/foot.dart';
import 'package:pedro_site/header.dart';
import 'package:pedro_site/inicio.dart';
import 'package:pedro_site/planos.dart';
import 'package:pedro_site/resultados.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            const Header(),
            const Initial(),
            Resultados(),
            const Depoimentos(),
            const Planos(),
            const Contato(),
            const Atendimentos(),
            const Foot()
          ],
        ),
      ),
    );
  }
}
