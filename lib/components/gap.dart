// gap 10, 20, 30, 40, 50

import 'package:flutter/material.dart';

class Gap extends StatelessWidget {
  const Gap(this.gap, {Key? key}) : super(key: key);

  final double gap;

  @override
  Widget build(BuildContext context) {
    return SizedBox(height: gap);
  }
}
