import 'package:flutter/material.dart';
import 'package:pedro_site/useful/paleta.dart';

class Foot extends StatelessWidget {
  const Foot({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: PaletaCores.marrom,
      height: 290,
      width: double.infinity,
    );
  }
}
