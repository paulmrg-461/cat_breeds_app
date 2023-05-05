import 'package:flutter/material.dart';

class TemperamentRow extends StatelessWidget {
  final String temperament;
  const TemperamentRow({super.key, required this.temperament});

  @override
  Widget build(BuildContext context) {
    List<String> temperamentList = temperament.split(', ');
    final colors = Theme.of(context).colorScheme;
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
          children: temperamentList
              .map((item) => Container(
                  padding:
                      const EdgeInsets.symmetric(vertical: 6, horizontal: 12),
                  margin: const EdgeInsets.only(bottom: 10, right: 8),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(22),
                    border: Border.all(color: colors.primary),
                  ),
                  child: Text(item,
                      style: const TextStyle(
                          fontSize: 14, fontWeight: FontWeight.w500))))
              .toList()),
    );
  }
}
