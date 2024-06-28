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
          const SizedBox(height: 25),
          const Expanded(child: SliderP()),
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
            color: PaletaCores.marrom,
          ),
        ),
        SizedBox(height: 10),
        Text(
          'Resultados reais com uma dieta personalizada: sua saúde e bem-estar em primeiro lugar!',
          style: TextStyle(
            fontFamily: 'Poppins',
            fontSize: 18,
            fontWeight: FontWeight.normal,
            color: PaletaCores.marrom,
          ),
          textAlign: TextAlign.center,
        ),
      ],
    ),
  );
}

class SliderP extends StatefulWidget {
  const SliderP({
    super.key,
  });

  @override
  State<SliderP> createState() => _SliderPState();
}

class _SliderPState extends State<SliderP> {
  int activeIndex = 0;
  final CarouselController _controller = CarouselController();
  final List<String> urlImages = [
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
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        CarouselSlider.builder(
          carouselController: _controller,
          itemCount: urlImages.length,
          itemBuilder: (context, index, realIndex) {
            final urlImage = urlImages[index];
            return buildImage(urlImage);
          },
          options: CarouselOptions(
            height: 400,
            autoPlay: true,
            autoPlayInterval: const Duration(seconds: 3),
            enlargeCenterPage: true,
            viewportFraction: isMobile ? 0.9 : 0.3,
            onPageChanged: (index, reason) {
              setState(() => activeIndex = index);
            },
          ),
        ),
        const SizedBox(height: 12),
        AnimatedSmoothIndicator(
          activeIndex: activeIndex,
          count: urlImages.length,
          effect: const ExpandingDotsEffect(
            activeDotColor: PaletaCores.marrom,
            dotColor: Colors.grey,
            dotHeight: 8,
            dotWidth: 8,
          ),
        ),
      ],
    );
  }

  Widget buildImage(String urlImage) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 5),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(16),
        child: Image.asset(
          urlImage,
          fit: BoxFit.cover,
        ),
      ),
    );
  }
}
