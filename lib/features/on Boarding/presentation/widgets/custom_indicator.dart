import 'package:dots_indicator/dots_indicator.dart';
import 'package:flutter/material.dart';

import '../../../../core/constants.dart';

class CustomIndicator extends StatelessWidget {
  const CustomIndicator({
    Key? key,
    required this.dotIndex,
  }) : super(key: key);
  final double? dotIndex;
  @override
  Widget build(BuildContext context) {
    final int position = dotIndex?.round() ?? 0;
    return DotsIndicator(
      decorator: DotsDecorator(
        activeColor: kMainColor,
        color: Colors.transparent,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(8),
          side: const BorderSide(
            color: kMainColor,
          ),
        ),
      ),
      dotsCount: 3,
      position: position,
    );
  }
}
