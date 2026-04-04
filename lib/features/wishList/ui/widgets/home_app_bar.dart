import 'package:flutter/material.dart';

import '../../../../gen/assets.gen.dart';

class HomeAppBar extends StatelessWidget {
  const HomeAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
      Assets.images.splash.image(),
        Icon(Icons.search)
    ],);
  }
}
