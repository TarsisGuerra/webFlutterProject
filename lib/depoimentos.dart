import 'package:flutter/material.dart';
import 'package:pedro_site/useful/paleta.dart'; // Make sure to import your palette file

class Depoimentos extends StatelessWidget {
  const Depoimentos({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.orange,
      height: 600,
      child: const Column(
        children: [
          TestimonialBody(),
        ],
      ),
    );
  }
}

class TestimonialBody extends StatelessWidget {
  const TestimonialBody({super.key});

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    final isMobile = width < 600;
    final isTablet = width >= 600 && width < 1200;

    return Padding(
      padding: EdgeInsets.only(
        right: isMobile
            ? 0
            : isTablet
                ? 50
                : 200,
        top: 80,
      ),
      child: SizedBox(
        width: double.infinity,
        height: 200,
        child: Stack(
          alignment: Alignment.centerLeft,
          clipBehavior: Clip.none,
          children: [
            Positioned(
              right: isMobile
                  ? 0
                  : isTablet
                      ? 0
                      : 50,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Container(
                    width: MediaQuery.of(context).size.width * 0.08,
                    height: MediaQuery.of(context).size.height * 0.15,
                    decoration: const BoxDecoration(
                        color: PaletaCores.marrom,
                        borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(360),
                            topRight: Radius.circular(360),
                            bottomRight: Radius.circular(360))),
                    child: const Padding(
                      padding: EdgeInsets.all(20),
                      child: Image(image: AssetImage('assets/images/negi.png')),
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Container(
                    width: MediaQuery.of(context).size.width,
                    height: MediaQuery.of(context).size.height * 0.15,
                    decoration: const BoxDecoration(
                      color: PaletaCores.marrom,
                    ),
                    child: Padding(
                      padding: EdgeInsets.only(
                        right: isMobile
                            ? 20
                            : isTablet
                                ? 50
                                : 50,
                      ),
                      child: FittedBox(
                        alignment: Alignment.centerRight,
                        fit: BoxFit.scaleDown,
                        child: Text(
                          'DEPOIMENTOS',
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
                ],
              ),
            ),
            Positioned(
              top: isMobile
                  ? 10
                  : isTablet
                      ? 20
                      : 0,
              right: isMobile
                  ? 300
                  : isTablet
                      ? 550
                      : 750,
              width: isMobile
                  ? MediaQuery.of(context).size.width * 0.2
                  : isTablet
                      ? MediaQuery.of(context).size.width * 0.3
                      : MediaQuery.of(context).size.width * 0.28,
              child: const Column(
                children: [
                  ClipOval(
                    child: Image(
                      image: AssetImage('assets/images/depo.png'),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
