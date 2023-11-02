import 'package:flutter/material.dart';

import '../../core/config/assets/assets.dart';

class BuildManImage extends StatelessWidget {
  final double? dimension;
  const BuildManImage({super.key, this.dimension = 180});

  @override
  Widget build(BuildContext context) {
    return SizedBox.square(
      dimension: dimension, //MediaQuery.of(context).size.width * .25,
      child: const CircleAvatar(
        foregroundImage: AssetImage(
          Assets.profile,
        ),
      ),
    );
  }
}
