import 'package:flutter/material.dart';

class CharacteristicDetail extends StatelessWidget {
  final IconData icon;
  final String text;
  const CharacteristicDetail(
      {super.key, required this.icon, required this.text});

  @override
  Widget build(BuildContext context) {
    final colors = Theme.of(context).colorScheme;
    return Padding(
      padding: const EdgeInsets.only(bottom: 8),
      child: Row(
        children: [
          Icon(
            icon,
            size: 28,
            color: colors.primary,
          ),
          const SizedBox(
            width: 8,
          ),
          Text(
            text,
            overflow: TextOverflow.ellipsis,
            style: const TextStyle(fontSize: 16, fontWeight: FontWeight.w400),
          ),
        ],
      ),
    );
  }
}
