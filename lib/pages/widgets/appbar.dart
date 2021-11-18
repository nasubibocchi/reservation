import 'package:flutter/material.dart';

class GradientAppBar extends StatelessWidget implements PreferredSizeWidget {
  GradientAppBar({
    Key? key,
    required this.gradient,
    required this.appBar,
  })  : preferredSize = appBar.preferredSize,
        super(key: key);

  final Gradient gradient;
  final AppBar appBar;

  @override
  final Size preferredSize;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        gradient: gradient,
      ),
      child: appBar,
    );
  }
}
