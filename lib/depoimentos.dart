import 'dart:async';

import 'package:flutter/material.dart';
import 'package:pedro_site/useful/paleta.dart'; // Importe sua paleta de cores
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class Depoimentos extends StatelessWidget {
  const Depoimentos({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      height: 650,
      child: const Column(
        children: [
          Expanded(child: TestimonialBody()),
        ],
      ),
    );
  }
}

class TestimonialBody extends StatelessWidget {
  const TestimonialBody({
    super.key,
  });

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
                        bottomRight: Radius.circular(360),
                      ),
                    ),
                    child: const Padding(
                      padding: EdgeInsets.all(20),
                      child: Image(image: AssetImage('assets/images/negi.png')),
                    ),
                  ),
                  const SizedBox(height: 20),
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
                  const SizedBox(height: 20),
                  SizedBox(
                    width: MediaQuery.of(context).size.width * 1,
                    height: MediaQuery.of(context).size.height * 1.8,
                    child: const Padding(
                      padding: EdgeInsets.only(left: 950),
                      child: TestimonialPage(),
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
                      : 800,
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

class TestimonialPage extends StatefulWidget {
  const TestimonialPage({super.key});

  @override
  _TestimonialPageState createState() => _TestimonialPageState();
}

class _TestimonialPageState extends State<TestimonialPage> {
  late final PageController _pageController;
  final List<String> testimonials = [
    'Continuo seguindo suas orientações e dieta, hoje me pesei e me surpreendi, estou com 55,30kg \n- Gabriela S.',
    'Boa noite, Pedro! \n Sim, tudo certinho! \n Tô feliz com minha dieta. \n Obrigada de verdade! 🥰 \n- Graziele',
    'Eu prometi que não me pesaria até o retorno kkkk, mas me pesei semana passada e como tinha ganho 2kg no início da dieta, vi que acabei perdendo os dois kg e pouquinho \n- Ana',
    'Estou amando. Já estou vendo diferença. Tô quase com 67 kg. \n- Bárbara',
    'Já vi uma diferença boa. Senti que melhorou a celulite, as roupas já estão mais folgadas 🙌🏻👏🏻 \n- Millana M.',
    'A melhor dieta que já recebi! 🙌🏻👏🏻 \n- Marcos P.',
    'Fala Pedrão! Bom dia! Passando só para dar o feedback. Já foram 2kg nessas duas semanas, hein?! Tá dando certo! 💪🏼 \n- Sérgio H.',
  ];
  int _currentPage = 0;

  @override
  void initState() {
    super.initState();
    _pageController = PageController();
    _startAutomaticPageChange();
  }

  @override
  void dispose() {
    _pageController.dispose();
    super.dispose();
  }

  void _startAutomaticPageChange() {
    Timer.periodic(const Duration(seconds: 5), (timer) {
      if (_currentPage < testimonials.length - 1) {
        _currentPage++;
      } else {
        _currentPage = 0;
      }
      if (_pageController.hasClients) {
        _pageController.animateToPage(
          _currentPage,
          duration: const Duration(milliseconds: 500),
          curve: Curves.easeInOut,
        );
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          width: 550,
          height: 200, // Altura desejada para o PageView
          child: PageView.builder(
            controller: _pageController,
            itemCount: testimonials.length,
            itemBuilder: (context, index) {
              return Padding(
                padding: const EdgeInsets.all(16.0),
                child: Card(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(15.0),
                  ),
                  elevation: 1,
                  color: PaletaCores.marrom,
                  child: SizedBox(
                    height: 300, // Altura do Card dentro do PageView
                    child: Center(
                      child: Padding(
                        padding: const EdgeInsets.all(16.0),
                        child: Text(
                          testimonials[index],
                          style: const TextStyle(
                            fontSize: 16.0,
                            fontWeight: FontWeight.w400,
                            fontFamily: 'Poppins',
                            color: Colors.white,
                          ),
                          textAlign: TextAlign.center,
                        ),
                      ),
                    ),
                  ),
                ),
              );
            },
            onPageChanged: (index) {
              setState(() {
                _currentPage = index;
              });
            },
          ),
        ),
        const SizedBox(height: 12),
        AnimatedSmoothIndicator(
          activeIndex: _currentPage,
          count: testimonials.length,
          effect: const WormEffect(
            dotHeight: 8,
            dotWidth: 8,
            activeDotColor: PaletaCores.marrom,
            dotColor: Colors.grey,
          ),
        ),
      ],
    );
  }
}
