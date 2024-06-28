import 'package:flutter/material.dart';
import 'package:pedro_site/useful/paleta.dart';

class Contato extends StatelessWidget {
  const Contato({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      width: double.infinity,
      child: Column(
        children: [
          SizedBox(
            height: MediaQuery.of(context).size.height * 0.7,
            child: corpo1(context),
          ),
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
                        : 200,
              ),
              child: Row(
                children: [
                  Text(
                    'Chegou a ',
                    style: TextStyle(
                      fontSize: isMobile
                          ? 20
                          : isTablet
                              ? 26
                              : 26,
                      color: PaletaCores.marrom,
                    ),
                  ),
                  Text(
                    'sua vez de',
                    style: TextStyle(
                      fontSize: isMobile
                          ? 20
                          : isTablet
                              ? 26
                              : 26,
                      color: PaletaCores.marrom,
                      fontWeight: FontWeight.w600,
                    ),
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
                          : 200,
                ),
                child: FittedBox(
                  alignment: Alignment.centerLeft,
                  fit: BoxFit.scaleDown,
                  child: Text(
                    'EMAGRECER',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: isMobile
                          ? 62
                          : isTablet
                              ? 92
                              : 92,
                      fontFamily: 'Poppins',
                      fontWeight: FontWeight.w100,
                    ),
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
                        : 200,
              ),
              child: Row(
                children: [
                  Text(
                    'Entre em contato agora e ',
                    style: TextStyle(
                      fontSize: isMobile
                          ? 20
                          : isTablet
                              ? 26
                              : 26,
                      color: PaletaCores.marrom,
                    ),
                  ),
                  Text(
                    'inicie sua transformação.',
                    style: TextStyle(
                      fontSize: isMobile
                          ? 20
                          : isTablet
                              ? 26
                              : 26,
                      color: PaletaCores.marrom,
                      fontWeight: FontWeight.w600,
                    ),
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
                top: 50,
              ),
              child: Container(
                padding: const EdgeInsets.only(
                  left: 25,
                  right: 25,
                  top: 12,
                  bottom: 12,
                ),
                decoration: BoxDecoration(
                  color: PaletaCores.marrom,
                  borderRadius: BorderRadius.circular(30),
                ),
                child: const Text(
                  'Comece agora!',
                  style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.w300,
                    fontSize: 16,
                    fontFamily: 'Poppins',
                  ),
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
                image: AssetImage('assets/images/contato.png'),
              ),
            ),
          ],
        ),
      ),
    ],
  );
}
