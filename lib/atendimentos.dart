import 'package:flutter/material.dart';
import 'package:pedro_site/useful/paleta.dart';

class Atendimentos extends StatelessWidget {
  const Atendimentos({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      height: 600,
      width: double.infinity,
      child: Column(
        children: [
          cabecalho(),
          const SizedBox(
            height: 40,
          ),
          cards()
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

Widget cards() {
  return Padding(
    padding: const EdgeInsets.only(left: 300, right: 300),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Container(
          width: 450,
          height: 429,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(15),
            border: Border.all(color: PaletaCores.marrom),
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text(
                'Online',
                style: TextStyle(
                  fontSize: 32,
                  color: PaletaCores.marrom,
                  fontWeight: FontWeight.w600,
                  fontFamily: 'Poppins',
                ),
              ),
              const Text(
                'Como?',
                style: TextStyle(
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
                child: const Padding(
                  padding:
                      EdgeInsets.only(top: 8, bottom: 8, left: 24, right: 24),
                  child: Text(
                    'Atendimento Remoto',
                    style: TextStyle(
                      fontSize: 22,
                      color: PaletaCores.marrom,
                      fontFamily: 'Poppins',
                    ),
                  ),
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              Container(
                decoration: BoxDecoration(
                  color: PaletaCores.marrom,
                  borderRadius: BorderRadius.circular(30),
                ),
                child: const Padding(
                  padding:
                      EdgeInsets.only(left: 24, right: 24, top: 8, bottom: 8),
                  child: Text(
                    'Agendar',
                    style: TextStyle(
                      fontSize: 18,
                      color: Colors.white,
                      fontWeight: FontWeight.w300,
                      fontFamily: 'Poppins',
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
        const SizedBox(
          width: 20,
        ),
        Container(
          width: 450,
          height: 429,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(15),
            border: Border.all(color: PaletaCores.marrom),
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text(
                'Presencial',
                style: TextStyle(
                  fontFamily: 'Poppins',
                  fontSize: 32,
                  color: PaletaCores.marrom,
                  fontWeight: FontWeight.w600,
                ),
              ),
              const Text(
                'Onde?',
                style: TextStyle(
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
                child: const Padding(
                  padding:
                      EdgeInsets.only(top: 8, bottom: 8, left: 24, right: 24),
                  child: Column(
                    children: [
                      Text(
                        'Ponta Negra Center',
                        style: TextStyle(
                          fontSize: 22,
                          color: PaletaCores.marrom,
                          fontWeight: FontWeight.w500,
                          fontFamily: 'Poppins',
                        ),
                      ),
                      Text(
                        'Rua da Palestina, 99. Ponta Negra/RN',
                        style: TextStyle(
                          fontSize: 18,
                          color: PaletaCores.marrom,
                          fontFamily: 'Poppins',
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              Container(
                decoration: BoxDecoration(
                  color: const Color.fromARGB(255, 187, 166, 150),
                  borderRadius: BorderRadius.circular(15),
                ),
                child: const Padding(
                  padding:
                      EdgeInsets.only(top: 8, bottom: 8, left: 24, right: 24),
                  child: Column(
                    children: [
                      Text(
                        'Ponta Negra Center',
                        style: TextStyle(
                          fontSize: 22,
                          color: PaletaCores.marrom,
                          fontWeight: FontWeight.w500,
                          fontFamily: 'Poppins',
                        ),
                      ),
                      Text(
                        'Av. Senador João Câmara, 160.',
                        style: TextStyle(
                          fontSize: 18,
                          color: PaletaCores.marrom,
                          fontFamily: 'Poppins',
                        ),
                      ),
                      Text(
                        'Centro Parnamirim',
                        style: TextStyle(
                          fontSize: 18,
                          color: PaletaCores.marrom,
                          fontFamily: 'Poppins',
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ],
    ),
  );
}
