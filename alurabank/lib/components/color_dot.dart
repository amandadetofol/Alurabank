import 'package:alurabank/components/sections/color_dot_model.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ColorDot extends StatelessWidget {
  final ColorDotModel model;

  const ColorDot({super.key, required this.model});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.only(left: 16),
          child: Text(model.title),
        ),
        Row(
          children: [
            Padding(
              padding: const EdgeInsets.only(bottom: 20, right: 2),
              child: Container(
                width: 10,
                height: 10,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: model.color,
                ),
              ),
            ),
            Text(
              model.value,
              style: Theme.of(context).textTheme.bodyLarge,
            ),
          ],
        ),
      ],
    );
  }
}
