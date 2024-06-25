import 'package:flutter/material.dart';
import 'package:pedro_site/useful/paleta.dart';

class Header extends StatelessWidget {
  const Header({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      padding: const EdgeInsets.symmetric(horizontal: 20),
      height: 100,
      width: double.infinity,
      child: LayoutBuilder(
        builder: (context, constraints) {
          if (constraints.maxWidth <= 600) {
            return buildMobileHeader();
          } else if (constraints.maxWidth <= 1200) {
            return buildTabletHeader(context);
          } else {
            return buildWebHeader(context);
          }
        },
      ),
    );
  }

  Widget buildMobileHeader() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        const Image(
          image: AssetImage('assets/images/logoFim.png'),
          height: 60,
        ),
        IconButton(
          icon: const Icon(Icons.menu, color: PaletaCores.marrom),
          onPressed: () {},
        ),
      ],
    );
  }

  Widget buildTabletHeader(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        const Image(
          image: AssetImage('assets/images/logoFim.png'),
          height: 60,
        ),
        IconButton(
          icon: const Icon(Icons.menu, color: PaletaCores.marrom),
          onPressed: () {},
        ),
      ],
    );
  }

  Widget buildWebHeader(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        const Image(
          image: AssetImage('assets/images/logoFim.png'),
          height: 60,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            buildMenuItem('Home', context),
            buildMenuItem('Acompanhamento', context),
            buildMenuItem('Resultados', context),
            buildMenuItem('Depoimentos', context),
            buildMenuItem('Planos', context),
            Container(
              decoration: BoxDecoration(
                color: PaletaCores.marrom,
                borderRadius: BorderRadius.circular(30),
              ),
              padding: const EdgeInsets.symmetric(
                horizontal: 16,
                vertical: 8,
              ),
              child: const Text(
                'Contato',
                style: TextStyle(
                  fontSize: 16,
                  color: Colors.white,
                  fontFamily: 'Poppins',
                  fontWeight: FontWeight.w300,
                ),
              ),
            ),
          ],
        ),
      ],
    );
  }

  Widget buildMenuItem(String text, BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 12.0),
      child: Text(
        text,
        style: const TextStyle(fontSize: 16, color: PaletaCores.marrom),
      ),
    );
  }
}
