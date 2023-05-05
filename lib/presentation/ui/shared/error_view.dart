import 'package:flutter/material.dart';

class ErrorView extends StatelessWidget {
  final String errorMessage;
  const ErrorView({super.key, required this.errorMessage});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            height: 220,
            margin: const EdgeInsets.only(bottom: 16),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(26),
                image: const DecorationImage(
                    fit: BoxFit.cover,
                    image: AssetImage('assets/images/not_found404.gif'))),
          ),
          Text(errorMessage),
        ],
      ),
    );
  }
}
