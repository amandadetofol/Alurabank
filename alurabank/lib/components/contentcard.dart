import 'package:flutter/material.dart';

class ContentCard extends StatelessWidget {
  final Widget content;

  const ContentCard({super.key, required this.content});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16),
      child: Ink(
        padding: const EdgeInsets.all(16),
        decoration: BoxDecoration(
          color: Theme.of(context).cardColor,
          borderRadius: const BorderRadius.all(Radius.circular(10)),
          boxShadow: const [
            BoxShadow(
              offset: Offset(0,3),
            )
          ],
        ),
        child: content,
      ),
    );
  }
}