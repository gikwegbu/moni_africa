import 'package:flutter/material.dart';

import '../../../size_config.dart';

class BuildImageContainer extends StatelessWidget {
  BuildImageContainer({
    required final this.imgSrc,
    Key? key,
  }) : super(key: key);
  String imgSrc;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: getProportionateScreenWidth(48),
      width: getProportionateScreenWidth(48),
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage(imgSrc),
          fit: BoxFit.fill,
        ),
        borderRadius: BorderRadius.circular(12),
      ),
    );
  }
}
