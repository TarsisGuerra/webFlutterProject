import 'package:flutter/material.dart';
import 'package:pedro_site/useful/paleta.dart';

class Planos extends StatelessWidget {
  const Planos({super.key});

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    final isMobile = width < 600;

    return Container(
      height: isMobile ? 1390 : 800,
      width: double.infinity,
      decoration: const BoxDecoration(
        color: Color.fromARGB(255, 187, 166, 150),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          cabecalho(context),
          const SizedBox(height: 35),
          isMobile
              ? const Column(
                  children: [
                    CardPlan(
                      cor: PaletaCores.marrom,
                      icone: Icons.verified,
                      duracao: '3 meses',
                      nomePlan: 'Plano Premium Trimestral',
                      parcelas: '3x',
                      centenas: 'R\$ 203',
                      centavos: '90',
                      valorTotal: 'R\$ 560,00',
                      vantagem1: '3 consultas presenciais ou on-line.',
                      vantagem2: '90 dias de acompanhamento no WhatsApp.',
                      vantagem3: 'Ajuste ilimitado do plano alimentar.',
                      vantagem4:
                          'Protocolo de treino montado para seu objetivo.',
                    ),
                    SizedBox(height: 12),
                    CardPlan2(
                      icone: Icons.verified,
                      duracao: '2 meses',
                      nomePlan: 'Plano Basic Bimestral ',
                      parcelas: '2x',
                      centenas: 'R\$ 215',
                      centavos: '28',
                      valorTotal: 'R\$ 400,00',
                      vantagem1: '2 consultas presenciais ou on-line.',
                      vantagem2: '60 dias de acompanhamento no WhatsApp.',
                      vantagem3: 'Ajuste ilimitado do plano alimentar.',
                      cor: Colors.white,
                    ),
                  ],
                )
              : const Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    CardPlan(
                      cor: PaletaCores.marrom,
                      icone: Icons.verified,
                      duracao: '3 meses',
                      nomePlan: 'Plano Premium Trimestral',
                      parcelas: '3x',
                      centenas: 'R\$ 203',
                      centavos: '90',
                      valorTotal: 'R\$ 560,00',
                      vantagem1: '3 consultas presenciais ou on-line.',
                      vantagem2: '90 dias de acompanhamento no WhatsApp.',
                      vantagem3: 'Ajuste ilimitado do plano alimentar.',
                      vantagem4:
                          'Protocolo de treino montado para seu objetivo.',
                    ),
                    SizedBox(width: 12),
                    CardPlan2(
                      icone: Icons.verified,
                      duracao: '2 meses',
                      nomePlan: 'Plano Basic Bimestral ',
                      parcelas: '2x',
                      centenas: 'R\$ 215',
                      centavos: '28',
                      valorTotal: 'R\$ 400,00',
                      vantagem1: '2 consultas presenciais ou on-line.',
                      vantagem2: '60 dias de acompanhamento no WhatsApp.',
                      vantagem3: 'Ajuste ilimitado do plano alimentar.',
                      cor: Colors.white,
                    ),
                  ],
                ),
        ],
      ),
    );
  }
}

Widget cabecalho(BuildContext context) {
  final width = MediaQuery.of(context).size.width;
  final isMobile = width < 600;

  return Padding(
    padding: isMobile
        ? const EdgeInsets.only(top: 40, left: 20, right: 20)
        : const EdgeInsets.only(top: 40),
    child: const Column(
      children: [
        Text(
          'Planos de acompanhamento',
          style: TextStyle(
              fontFamily: 'Poppins',
              fontSize: 36,
              fontWeight: FontWeight.w500,
              color: PaletaCores.marrom),
        ),
        Text(
          'Os melhores preços para alcançar seus objetivos.',
          style: TextStyle(
              fontFamily: 'Poppins',
              fontSize: 18,
              fontWeight: FontWeight.w300,
              color: Colors.white),
        ),
      ],
    ),
  );
}

class CardPlan extends StatelessWidget {
  final String duracao;
  final String nomePlan;
  final String parcelas;
  final String centenas;
  final String centavos;
  final String valorTotal;
  final String vantagem1;
  final String vantagem2;
  final String vantagem3;
  final String vantagem4;
  final IconData icone;
  final Color cor;

  const CardPlan({
    required this.duracao,
    required this.nomePlan,
    required this.parcelas,
    required this.centenas,
    required this.centavos,
    required this.valorTotal,
    required this.vantagem1,
    required this.vantagem2,
    required this.vantagem3,
    required this.vantagem4,
    required this.icone,
    required this.cor,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    final isMobile = width < 600;
    final isTablet = width >= 600 && width < 1200;

    return Container(
      height: isMobile
          ? 592
          : isTablet
              ? 600
              : 592,
      width: isMobile
          ? width * 0.9
          : isTablet
              ? 380
              : 455,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(10),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Container(
            decoration: const BoxDecoration(
              color: PaletaCores.marrom,
              shape: BoxShape.rectangle,
              borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(30),
                bottomRight: Radius.circular(30),
              ),
            ),
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 40, vertical: 20),
              child: Text(
                duracao,
                style: TextStyle(
                  color: Colors.white,
                  fontSize: isMobile ? 18 : 22,
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 40),
            child: Text(
              nomePlan,
              style: TextStyle(
                color: PaletaCores.marrom,
                fontSize: isMobile ? 22 : 26,
                fontFamily: 'Poppins',
                fontWeight: FontWeight.w600,
              ),
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              Baseline(
                baseline: -55.0,
                baselineType: TextBaseline.alphabetic,
                child: Text(
                  parcelas,
                  style: const TextStyle(
                    color: PaletaCores.marrom,
                    fontSize: 26,
                    fontFamily: 'Poppins',
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ),
              Baseline(
                baseline: 45.0,
                baselineType: TextBaseline.alphabetic,
                child: Text(
                  centenas,
                  style: const TextStyle(
                    color: PaletaCores.marrom,
                    fontSize: 66,
                    fontFamily: 'Poppins',
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ),
              Baseline(
                baseline: -45.0,
                baselineType: TextBaseline.alphabetic,
                child: Text(
                  centavos,
                  style: const TextStyle(
                    color: PaletaCores.marrom,
                    fontSize: 40,
                    fontFamily: 'Poppins',
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ),
            ],
          ),
          Padding(
            padding: const EdgeInsets.only(bottom: 40),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text(
                  'Ou ',
                  style: TextStyle(
                    color: PaletaCores.marrom,
                    fontSize: 16,
                    fontFamily: 'Poppins',
                    fontWeight: FontWeight.w400,
                  ),
                ),
                Text(
                  valorTotal,
                  style: const TextStyle(
                    color: PaletaCores.marrom,
                    fontSize: 16,
                    fontFamily: 'Poppins',
                    fontWeight: FontWeight.w600,
                  ),
                ),
                const Text(
                  ' à vista no pix',
                  style: TextStyle(
                    color: PaletaCores.marrom,
                    fontSize: 16,
                    fontFamily: 'Poppins',
                    fontWeight: FontWeight.w400,
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 12),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    const Icon(
                      Icons.verified,
                      color: PaletaCores.marrom,
                    ),
                    const SizedBox(width: 8),
                    Flexible(
                      child: Text(
                        vantagem1,
                        style: const TextStyle(
                          fontSize: 16,
                          fontFamily: 'Poppins',
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 12),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    const Icon(
                      Icons.verified,
                      color: PaletaCores.marrom,
                    ),
                    const SizedBox(width: 8),
                    Flexible(
                      child: Text(
                        vantagem2,
                        style: const TextStyle(
                          fontSize: 16,
                          fontFamily: 'Poppins',
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 12),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    const Icon(
                      Icons.verified,
                      color: PaletaCores.marrom,
                    ),
                    const SizedBox(width: 8),
                    Flexible(
                      child: Text(
                        vantagem3,
                        style: const TextStyle(
                          fontSize: 16,
                          fontFamily: 'Poppins',
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ),
                  ],
                ),
                if (vantagem4.isNotEmpty) const SizedBox(height: 12),
                if (vantagem4.isNotEmpty)
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Icon(
                        icone,
                        color: cor,
                      ),
                      const SizedBox(width: 8),
                      Flexible(
                        child: Text(
                          vantagem4,
                          style: const TextStyle(
                            fontSize: 16,
                            fontFamily: 'Poppins',
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ),
                    ],
                  ),
                SizedBox(height: isMobile ? 22 : 48),
                MouseRegion(
                  cursor: SystemMouseCursors.click,
                  child: Container(
                    decoration: const BoxDecoration(
                      color: PaletaCores.marrom,
                      borderRadius: BorderRadius.all(Radius.circular(10)),
                    ),
                    child: const Padding(
                      padding:
                          EdgeInsets.symmetric(vertical: 12, horizontal: 48),
                      child: Text(
                        'Quero esse!',
                        style: TextStyle(color: Colors.white, fontSize: 18),
                      ),
                    ),
                  ),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}

class CardPlan2 extends StatelessWidget {
  final String duracao;
  final String nomePlan;
  final String parcelas;
  final String centenas;
  final String centavos;
  final String valorTotal;
  final String vantagem1;
  final String vantagem2;
  final String vantagem3;

  final IconData icone;
  final Color cor;

  const CardPlan2({
    required this.duracao,
    required this.nomePlan,
    required this.parcelas,
    required this.centenas,
    required this.centavos,
    required this.valorTotal,
    required this.vantagem1,
    required this.vantagem2,
    required this.vantagem3,
    required this.icone,
    required this.cor,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    final isMobile = width < 600;
    final isTablet = width >= 600 && width < 1200;

    return Container(
      height: isMobile ? 507 : 592,
      width: isMobile
          ? width * 0.9
          : isTablet
              ? 380
              : 455,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(10),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Container(
            decoration: const BoxDecoration(
              color: PaletaCores.marrom,
              shape: BoxShape.rectangle,
              borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(30),
                bottomRight: Radius.circular(30),
              ),
            ),
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 40, vertical: 20),
              child: Text(
                duracao,
                style: TextStyle(
                  color: Colors.white,
                  fontSize: isMobile ? 18 : 22,
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 20),
            child: Text(
              nomePlan,
              style: TextStyle(
                color: PaletaCores.marrom,
                fontSize: isMobile ? 22 : 26,
                fontFamily: 'Poppins',
                fontWeight: FontWeight.w600,
              ),
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              Baseline(
                baseline: -55.0,
                baselineType: TextBaseline.alphabetic,
                child: Text(
                  parcelas,
                  style: const TextStyle(
                    color: PaletaCores.marrom,
                    fontSize: 26,
                    fontFamily: 'Poppins',
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ),
              Baseline(
                baseline: 45.0,
                baselineType: TextBaseline.alphabetic,
                child: Text(
                  centenas,
                  style: const TextStyle(
                    color: PaletaCores.marrom,
                    fontSize: 66,
                    fontFamily: 'Poppins',
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ),
              Baseline(
                baseline: -45.0,
                baselineType: TextBaseline.alphabetic,
                child: Text(
                  centavos,
                  style: const TextStyle(
                    color: PaletaCores.marrom,
                    fontSize: 40,
                    fontFamily: 'Poppins',
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ),
            ],
          ),
          Padding(
            padding: const EdgeInsets.only(bottom: 40),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text(
                  'Ou ',
                  style: TextStyle(
                    color: PaletaCores.marrom,
                    fontSize: 16,
                    fontFamily: 'Poppins',
                    fontWeight: FontWeight.w400,
                  ),
                ),
                Text(
                  valorTotal,
                  style: const TextStyle(
                    color: PaletaCores.marrom,
                    fontSize: 16,
                    fontFamily: 'Poppins',
                    fontWeight: FontWeight.w600,
                  ),
                ),
                const Text(
                  ' à vista no pix',
                  style: TextStyle(
                    color: PaletaCores.marrom,
                    fontSize: 16,
                    fontFamily: 'Poppins',
                    fontWeight: FontWeight.w400,
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 12),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    const Icon(
                      Icons.verified,
                      color: PaletaCores.marrom,
                    ),
                    const SizedBox(width: 8),
                    Flexible(
                      child: Text(
                        vantagem1,
                        style: const TextStyle(
                          fontSize: 16,
                          fontFamily: 'Poppins',
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 12),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    const Icon(
                      Icons.verified,
                      color: PaletaCores.marrom,
                    ),
                    const SizedBox(width: 8),
                    Flexible(
                      child: Text(
                        vantagem2,
                        style: const TextStyle(
                          fontSize: 16,
                          fontFamily: 'Poppins',
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 12),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    const Icon(
                      Icons.verified,
                      color: PaletaCores.marrom,
                    ),
                    const SizedBox(width: 8),
                    Flexible(
                      child: Text(
                        vantagem3,
                        style: const TextStyle(
                          fontSize: 16,
                          fontFamily: 'Poppins',
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(height: isMobile ? 32 : 48),
                MouseRegion(
                  cursor: SystemMouseCursors.click,
                  child: Container(
                    decoration: const BoxDecoration(
                      color: PaletaCores.marrom,
                      borderRadius: BorderRadius.all(Radius.circular(10)),
                    ),
                    child: const Padding(
                      padding:
                          EdgeInsets.symmetric(vertical: 12, horizontal: 48),
                      child: Text(
                        'Quero esse!',
                        style: TextStyle(color: Colors.white, fontSize: 18),
                      ),
                    ),
                  ),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
