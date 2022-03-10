import 'package:flutter/material.dart';

import '../../../size_config.dart';

class ChipText extends StatelessWidget {
  ChipText({
    required final this.title,
    required final this.subtitle,
    required final this.subtitleColor,
    Key? key,
  }) : super(key: key);
  String title, subtitle;
  Color subtitleColor;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: getProportionateScreenWidth(8),
      ),
      decoration: BoxDecoration(
        color: const Color(0xFF090A0A),
        borderRadius: BorderRadius.circular(100),
      ),
      child: Text.rich(
        TextSpan(
            // text: 'Repayment rate: ',
            text: title,
            style: TextStyle(
              color: const Color(0xFFCDCFD0),
              fontSize: getProportionateScreenWidth(16),
              fontWeight: FontWeight.w400,
            ),
            children: [
              TextSpan(
                text: subtitle,
                // text: '60%',
                style: TextStyle(
                  // color: Color(0xFFEAB948),
                  color: subtitleColor,
                ),
              )
            ]),
      ),
    );
  }
}
