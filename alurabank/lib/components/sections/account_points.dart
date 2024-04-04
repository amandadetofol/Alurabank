import 'package:alurabank/components/contentcard.dart';
import 'package:alurabank/theme/theme_colors.dart';
import 'package:flutter/material.dart';

import '../divisor.dart';

class AccountPoints extends StatelessWidget {
  const AccountPoints({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: EdgeInsets.only(bottom: 16, top: 32, left: 16),
          child: Text("Pontos da conta", style: TextStyle(fontSize: 20)),
        ),
        ContentCard(
            content: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 8),
              child: Text("Pontos totais"),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 8, bottom: 8),
              child: Text("3000", style: Theme.of(context).textTheme.bodyLarge),
            ),
            Divisor(),
            Padding(
              padding: const EdgeInsets.only(top: 8),
              child: Text("Objetivos", style: TextStyle(fontSize: 20),),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 8),
              child: TextAndColorDot(color: ThemeColors.pink, text: "Entrega grátis: 15000pts"),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 8),
              child: TextAndColorDot(color: ThemeColors.purple, text: "1 mês de streaming: 30000pts"),
            )
          ],
        ))
      ],
    );
  }
}

class TextAndColorDot extends StatelessWidget {
  final Color color;
  final String text;

  const TextAndColorDot({super.key, required this.color, required this.text});

  @override
  Widget build(BuildContext context) {
    return Container(
        child: (Row(
      children: [
        Padding(
          padding: const EdgeInsets.only(bottom: 2, right: 4),
          child: Container(
            width: 10,
            height: 10,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              color: color,
            ),
          ),
        ),
        Text(text),
      ],
    )));
  }
}
