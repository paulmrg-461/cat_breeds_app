import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  final IconData? icon;
  final String text;
  final VoidCallback onPressed;
  final double? width;
  final double? borderRadius;
  final double internalHorizontalPadding;
  final double internalVerticalPadding;
  const CustomButton(
      {Key? key,
      this.icon,
      required this.text,
      required this.onPressed,
      this.width,
      this.borderRadius = 6,
      this.internalHorizontalPadding = 14,
      this.internalVerticalPadding = 8})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: width,
      child: ElevatedButton(
          onPressed: onPressed,
          child: (icon == null)
              ? Padding(
                  padding: EdgeInsets.symmetric(
                      vertical: internalVerticalPadding,
                      horizontal: internalHorizontalPadding),
                  child: Text(
                    text.toUpperCase(),
                  ),
                )
              : Padding(
                  padding: EdgeInsets.symmetric(
                      vertical: internalVerticalPadding,
                      horizontal: internalHorizontalPadding),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(
                        icon,
                      ),
                      const SizedBox(
                        width: 8.0,
                      ),
                      Text(
                        text.toUpperCase(),
                      ),
                    ],
                  ),
                )),
    );
  }
}
