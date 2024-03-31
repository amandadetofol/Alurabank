import 'package:alurabank/theme/theme_colors.dart';
import 'package:flutter/material.dart';

class Header extends StatelessWidget {
  const Header({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        gradient: LinearGradient(
          colors: ThemeColors.headerGradient,
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
        ),
        borderRadius: BorderRadius.only(
          topLeft: Radius.zero,
          topRight: Radius.zero,
          bottomLeft: Radius.circular(15.0),
          bottomRight: Radius.circular(15.0)
        ),
      ),
      child: Padding(
        padding: EdgeInsets.only(
            top: 80,
            left: 16,
            right: 16,
            bottom: 16),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text.rich(
                    TextSpan(
                        text: "\$",
                        children: [
                          TextSpan(
                            style: Theme.of(context).textTheme.bodyLarge,
                            text: "1.000"
                          )
                        ]
                    ),
                ),
                Text(
                    "Balanço disponível",
                ),
              ],
            ),
            Icon(
                size: 42,
                Icons.account_circle),
          ],
        ),
      )
    );
  }
  
}