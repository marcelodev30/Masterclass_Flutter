// ignore_for_file: deprecated_member_use
//import 'package:ex01/core/app_colors.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Smart IF'),
        titleTextStyle: TextStyle(
            color: Colors.white, fontSize: 30, fontWeight: FontWeight.w600),
        centerTitle: true,
        backgroundColor: Colors.transparent,
      ),
      backgroundColor: const Color(0xFF121212), // Fundo escuro
      body: Column(
        children: [
          CardAir(),
          SizedBox(height: 20),
          CardAir(),
          SizedBox(height: 20),
          CardAir(),
        ],
      ),
    );
  }
}

class CardAir extends StatelessWidget {
  const CardAir({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        // Título
        Padding(
          padding: const EdgeInsets.only(bottom: 20),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              const Padding(
                padding: EdgeInsets.symmetric(horizontal: 16.0),
                child: Text(
                  'Laboratório 01',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 24,
                    fontWeight: FontWeight.w700,
                    letterSpacing: 1.2,
                    shadows: [
                      Shadow(
                        color: Colors.black45,
                        offset: Offset(1, 1),
                        blurRadius: 3,
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),

        // Card Principal
        Container(
          width: 300,
          height: 150,
          decoration: BoxDecoration(
            color: Colors.black.withOpacity(0.8), // Fundo semi-transparente
            borderRadius: BorderRadius.circular(20),
            boxShadow: [
              BoxShadow(
                color: Colors.black.withOpacity(0.5),
                offset: const Offset(0, 6),
                blurRadius: 15,
              ),
            ],
          ),
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                // Coluna Esquerda: Controle de Temperatura
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    // Botão para Aumentar
                    IconButton(
                      onPressed: () {},
                      icon: const Icon(
                        Icons.keyboard_arrow_up,
                        size: 30,
                        color: Colors.white,
                      ),
                      splashRadius: 25,
                      highlightColor: Colors.green.withOpacity(0.2),
                    ),
                    // Temperatura
                    const Text(
                      '22°C',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 24,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    // Botão para Diminuir
                    IconButton(
                      onPressed: () {},
                      icon: const Icon(
                        Icons.keyboard_arrow_down,
                        size: 30,
                        color: Colors.white,
                      ),
                      splashRadius: 25,
                      highlightColor: Colors.red.withOpacity(0.2),
                    ),
                  ],
                ),

                // Coluna Central: Nome e Ícone
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Text(
                      'Ar Condicionado LG',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 16,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    const SizedBox(height: 10),
                    Image.asset(
                      'assets/icons/air-conditioner.png',
                      height: 75,
                      width: 75,
                    ),
                  ],
                ),

                // Botão Ligar/Desligar
                IconButton(
                  onPressed: () {},
                  icon: const Icon(
                    Icons.power_settings_new,
                    size: 35,
                    color: Colors.redAccent,
                  ),
                  splashRadius: 28,
                  highlightColor: Colors.red.withOpacity(0.2),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
