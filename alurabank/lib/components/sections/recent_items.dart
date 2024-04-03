import 'package:alurabank/components/colordot/color_dot.dart';
import 'package:alurabank/components/colordot/color_dot_model.dart';
import 'package:alurabank/components/contentcard.dart';
import 'package:alurabank/components/divisor.dart';
import 'package:alurabank/theme/theme_colors.dart';
import 'package:flutter/material.dart';

class RecentActivities extends StatelessWidget {
  const RecentActivities({super.key});

  @override
  Widget build(BuildContext context) {
    return ContentCard(
        content: Container(
            child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            ColorDot(
                model: ColorDotModel(
                    color: ThemeColors.burnedYellow,
                    title: "Saída",
                    value: "\$9900.97")),
            ColorDot(
                model: ColorDotModel(
                    color: ThemeColors.purple,
                    title: "Entrada",
                    value: "\$9332.35")),
          ],
        ),
        const Padding(
          padding: EdgeInsets.only(top: 16.0, bottom: 8.0),
          child: Text("Limite de gastos"),
        ),
        const Padding(
          padding: EdgeInsets.only(top: 8.0, bottom: 8.0),
          child: LinearProgressIndicator(
            value: 50 / 100,
            minHeight: 8,
            borderRadius: BorderRadius.all(Radius.circular(10)),
          ),
        ),
        Divisor(),
        const Padding(
          padding: EdgeInsets.only(top: 8.0),
          child: Text(
              "Esse mês você gastou \$1500.00 com jogos. Tente abaixar esse custo!"),
        ),
        TextButton(
            onPressed: () {},
            child: const Text(
              "Diga-me como",
              style: TextStyle(fontSize: 16),
            ))
      ],
    )));
  }
}
