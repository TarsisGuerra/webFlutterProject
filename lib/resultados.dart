import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:pedro_site/useful/paleta.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class Resultados extends StatelessWidget {
  const Resultados({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      width: double.infinity,
      height: 640,
      child: Column(
        children: [
          cabecalho(context),
          const SizedBox(
            height: 25,
          ),
          const Expanded(child: SliderP()),
        ],
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

class SliderP extends StatefulWidget {
  const SliderP({super.key});

  @override
  State<SliderP> createState() => _SliderPState();
}

class _SliderPState extends State<SliderP> {
  int activeIndex = 0;
  final controller = CarouselController();
  final urlImages = [
    'assets/images/imagesResult/1.png',
    'assets/images/imagesResult/2.png',
    'assets/images/imagesResult/3.png',
    'assets/images/imagesResult/4.png',
    'assets/images/imagesResult/5.png',
    'assets/images/imagesResult/6.png',
  ];

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    final isMobile = width < 600;
    final isTablet = width >= 600 && width < 1200;
    return Container(
      //color: const Color.fromARGB(255, 40, 40, 35),
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            CarouselSlider.builder(
                carouselController: controller,
                itemCount: urlImages.length,
                itemBuilder: (context, index, realIndex) {
                  final urlImage = urlImages[index];
                  return buildImage(urlImage, index);
                },
                options: CarouselOptions(
                    height: 400,
                    autoPlay: true,
                    enableInfiniteScroll: false,
                    autoPlayAnimationDuration: const Duration(seconds: 2),
                    enlargeCenterPage: true,
                    viewportFraction: isMobile
                        ? 0.9
                        : isTablet
                            ? 0.4
                            : 0.25, // Exibe duas imagens ao mesmo tempo
                    onPageChanged: (index, reason) =>
                        setState(() => activeIndex = index))),
            const SizedBox(height: 12),
            buildIndicator()
          ],
        ),
      ),
    );
  }

  Widget buildIndicator() => AnimatedSmoothIndicator(
        onDotClicked: animateToSlide,
        effect: const ExpandingDotsEffect(
            dotWidth: 10, dotHeight: 10, activeDotColor: PaletaCores.marrom),
        activeIndex: activeIndex,
        count: urlImages.length,
      );

  void animateToSlide(int index) => controller.animateToPage(index);
}

Widget buildImage(String urlImage, int index) => Padding(
      padding: const EdgeInsets.symmetric(
          horizontal: 5), // Adiciona padding entre as imagens
      child: ClipRRect(
        borderRadius: BorderRadius.circular(16),
        child: Image.asset(
          urlImage,
          fit: BoxFit.cover,
        ),
      ),
    );
