import 'package:flutter/material.dart';

class CharacteristicItem extends StatelessWidget {
  final IconData icon;
  final String text;
  const CharacteristicItem({super.key, required this.icon, required this.text});

  @override
  Widget build(BuildContext context) {
    final colors = Theme.of(context).colorScheme;
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Icon(
          icon,
          size: 18,
          color: colors.primary,
        ),
        const SizedBox(
          width: 4,
        ),
        Text(
          text,
          overflow: TextOverflow.ellipsis,
          style: const TextStyle(fontSize: 14, fontWeight: FontWeight.w400),
        ),
      ],
    );
  }
}
