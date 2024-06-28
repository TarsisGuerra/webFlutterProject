import 'package:flutter/material.dart';
import 'package:pedro_site/useful/paleta.dart';
import 'package:social_media_buttons/social_media_icons.dart';
import 'package:url_launcher/url_launcher.dart';

class Initial extends StatefulWidget {
  const Initial({super.key});

  @override
  State<Initial> createState() => _InitialState();
}

class _InitialState extends State<Initial> {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: Column(
        children: [
          SizedBox(
              height: MediaQuery.of(context).size.height * 0.7,
              child: corpo1(context)),
          Container(
            child: const Column(
              children: [
                SizedBox(height: 40),
              ],
            ),
          )
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
                          : 200),
              child: Row(
                children: [
                  Text(
                    'Olá, sou o ',
                    style: TextStyle(
                        fontSize: isMobile
                            ? 20
                            : isTablet
                                ? 26
                                : 26,
                        color: PaletaCores.marrom),
                  ),
                  Text(
                    'nutricionista',
                    style: TextStyle(
                        fontSize: isMobile
                            ? 20
                            : isTablet
                                ? 26
                                : 26,
                        color: PaletaCores.marrom,
                        fontWeight: FontWeight.w600),
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
                            : 200),
                child: FittedBox(
                  alignment: Alignment.centerLeft,
                  fit: BoxFit.scaleDown,
                  child: Text(
                    'PEDRO GÓIS',
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: isMobile
                            ? 62
                            : isTablet
                                ? 92
                                : 92,
                        fontFamily: 'Poppins',
                        fontWeight: FontWeight.w100),
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
                          : 200),
              child: Row(
                children: [
                  Text(
                    'Especialista em ',
                    style: TextStyle(
                        fontSize: isMobile
                            ? 20
                            : isTablet
                                ? 26
                                : 26,
                        color: PaletaCores.marrom),
                  ),
                  Text(
                    'Emagrecimento',
                    style: TextStyle(
                        fontSize: isMobile
                            ? 20
                            : isTablet
                                ? 26
                                : 26,
                        color: PaletaCores.marrom,
                        fontWeight: FontWeight.w600),
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
                  top: 50),
              child: Container(
                padding: const EdgeInsets.only(
                    left: 25, right: 25, top: 12, bottom: 12),
                decoration: BoxDecoration(
                    color: PaletaCores.marrom,
                    borderRadius: BorderRadius.circular(30)),
                child: GestureDetector(
                  onTap: () async {
                    const url = 'http://wa.me/5584987121596';
                    // ignore: deprecated_member_use
                    if (await canLaunch(url)) {
                      // ignore: deprecated_member_use
                      await launch(url);
                    } else {
                      throw 'Could not launch $url';
                    }
                  },
                  child: const Text(
                    'Entre em Contato',
                    style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.w300,
                        fontSize: 16,
                        fontFamily: 'Poppins'),
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
          child: Column(
            children: [
              const ClipOval(
                child: Image(
                  image: AssetImage('assets/images/imagem.png'),
                ),
              ),
              const SizedBox(
                height: 12,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  GestureDetector(
                    onTap: () async {
                      const url =
                          'https://www.instagram.com/pedrogoisnutri?igsh=bXpzMXp5b25tamQw&utm_source=qr';
                      // ignore: deprecated_member_use
                      if (await canLaunch(url)) {
                        // ignore: deprecated_member_use
                        await launch(url);
                      } else {
                        throw 'Could not launch $url';
                      }
                    },
                    child: const Icon(
                      SocialMediaIcons.instagram,
                      color: PaletaCores.marrom,
                    ),
                  ),
                  const SizedBox(
                    width: 12,
                  ),
                  GestureDetector(
                    onTap: () async {
                      const url =
                          'https://linktr.ee/nutripedrogois?fbclid=PAZXh0bgNhZW0CMTEAAaY4bXXHaJOmsTw5HgHIHD6pSy2iopRveUnly1KszhjBrsRZt0daGXZ8lkc_aem_AZFLjA4tfgEq3-2x2FKMlYag9Hd8NAqApKnbHqhgTfE4MxH35SaF6Evie7DqMjsgGsNJD-aRZ3hXflCS5z_d_sYM';
                      // ignore: deprecated_member_use
                      if (await canLaunch(url)) {
                        // ignore: deprecated_member_use
                        await launch(url);
                      } else {
                        throw 'Could not launch $url';
                      }
                    },
                    child: const Icon(
                      SocialMediaIcons.linkedin,
                      color: PaletaCores.marrom,
                    ),
                  )
                ],
              )
            ],
          )),
    ],
  );
}
