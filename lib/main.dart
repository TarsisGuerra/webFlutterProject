import 'package:flutter/material.dart';
import 'package:pedro_site/acompanhamento.dart';
import 'package:pedro_site/atendimentos.dart';
import 'package:pedro_site/contato.dart';
import 'package:pedro_site/depoimentos.dart';
import 'package:pedro_site/foot.dart';
import 'package:pedro_site/inicio.dart';
import 'package:pedro_site/planos.dart';
import 'package:pedro_site/resultados.dart';
import 'package:pedro_site/useful/paleta.dart';
import 'package:url_launcher/url_launcher.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Pedro Site',
      home: HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final ScrollController _scrollController = ScrollController();

  void _scrollToSection(GlobalKey key) {
    final RenderObject? renderObject = key.currentContext?.findRenderObject();
    if (renderObject is RenderBox) {
      final position = renderObject.localToGlobal(Offset.zero);
      _scrollController.animateTo(
        position.dy,
        duration: const Duration(seconds: 1),
        curve: Curves.easeInOut,
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        controller: _scrollController,
        child: Container(
          color: Colors.white,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(height: 60),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  const Image(
                    image: AssetImage('assets/images/logoFim.png'),
                    height: 60,
                  ),
                  Row(
                    children: [
                      _buildNavBarButton(
                          'Home', () => _scrollToSection(_homeKey)),
                      _buildNavBarButton('Acompanhamento',
                          () => _scrollToSection(_acompanhamentoKey)),
                      _buildNavBarButton(
                          'Resultados', () => _scrollToSection(_resultadosKey)),
                      _buildNavBarButton('Depoimentos',
                          () => _scrollToSection(_depoimentosKey)),
                      _buildNavBarButton(
                          'Planos', () => _scrollToSection(_planosKey)),
                      _buildNavBarButton('Atendimentos',
                          () => _scrollToSection(_atendimentosKey)),
                      _buildContactButton(),
                    ],
                  )
                ],
              ),
              Initial(key: _homeKey),
              Acompanhamento(key: _acompanhamentoKey),
              Resultados(key: _resultadosKey),
              Depoimentos(key: _depoimentosKey),
              Planos(key: _planosKey),
              Contato(key: _contatoKey),
              Atendimentos(key: _atendimentosKey),
              const Foot(),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildNavBarButton(String text, VoidCallback onPressed) {
    return TextButton(
      onPressed: onPressed,
      child: Text(
        text,
        style: const TextStyle(fontSize: 16, color: PaletaCores.marrom),
      ),
    );
  }

  Widget _buildContactButton() {
    return TextButton(
      onPressed: () => _scrollToSection(_contatoKey),
      child: Container(
        decoration: BoxDecoration(
          color: PaletaCores.marrom,
          borderRadius: BorderRadius.circular(30),
        ),
        padding: const EdgeInsets.symmetric(
          horizontal: 16,
          vertical: 8,
        ),
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
            'Contato',
            style: TextStyle(
              fontSize: 16,
              color: Colors.white,
              fontFamily: 'Poppins',
              fontWeight: FontWeight.w300,
            ),
          ),
        ),
      ),
    );
  }

  final GlobalKey _homeKey = GlobalKey();
  final GlobalKey _acompanhamentoKey = GlobalKey();
  final GlobalKey _atendimentosKey = GlobalKey();
  final GlobalKey _resultadosKey = GlobalKey();
  final GlobalKey _depoimentosKey = GlobalKey();
  final GlobalKey _planosKey = GlobalKey();
  final GlobalKey _contatoKey = GlobalKey();

  @override
  void dispose() {
    _scrollController.dispose();
    super.dispose();
  }
}
