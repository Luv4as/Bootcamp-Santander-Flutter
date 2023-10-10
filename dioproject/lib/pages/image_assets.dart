import 'package:dioproject/shared/app_images.dart';
import 'package:flutter/material.dart';

class ImageAssetsPage extends StatefulWidget {
  const ImageAssetsPage({super.key});

  @override
  State<ImageAssetsPage> createState() => _ImageAssetsPageState();
}

class _ImageAssetsPageState extends State<ImageAssetsPage> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Image.asset(
          AppImages.notionLogo,
          height: 80,
          //width: double.infinity,
        ),
        Image.asset(
          AppImages.paisagem1,
          width: double.infinity,
        ),
        Image.asset(AppImages.paisagem2),
      ],
    );
  }
}
