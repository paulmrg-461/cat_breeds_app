import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:url_launcher/url_launcher.dart';

class CustomIcon extends StatelessWidget {
  final String path;
  final String label;
  final double width;
  final double height;
  final String url;

  const CustomIcon({
    Key? key,
    required this.path,
    required this.url,
    required this.label,
    required this.width,
    required this.height,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final SvgPicture svgPicture = SvgPicture.asset(
      path,
      semanticsLabel: label,
      width: width,
      height: height,
    );
    return Container(
      width: width,
      height: height,
      margin: const EdgeInsets.symmetric(horizontal: 6),
      decoration: BoxDecoration(
        color: const Color(0xffAD54C2).withOpacity(0.3),
        borderRadius: BorderRadius.circular(6),
      ),
      child: InkWell(
          onTap: () async {
            final Uri uri = Uri.parse(url);
            if (await canLaunchUrl(uri)) {
              await launchUrl(uri);
            }
            throw "Could not launch $uri";
          },
          child: svgPicture),
    );
  }
}
