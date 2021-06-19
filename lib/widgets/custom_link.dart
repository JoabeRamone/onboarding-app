import 'package:flutter/material.dart';

class CustomLink extends StatelessWidget {
  final String titulo;
  final void Function() irParaPaginaInicial;

  CustomLink({required this.titulo, required this.irParaPaginaInicial});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          InkWell(
            onTap: irParaPaginaInicial,
            child: RichText(
              text: TextSpan(
                text: titulo,
                style: new TextStyle(color: Colors.black),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
