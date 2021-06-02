import 'package:flutter/material.dart';

import 'package:split_it/theme/app_theme.dart';

enum IconDollarType { send, receive }

class IconDollarWidget extends StatelessWidget {
  final IconDollarType type;
  const IconDollarWidget({
    Key? key,
    required this.type,
  }) : super(key: key);

  String get pathImage =>
      "assets/images/${type == IconDollarType.receive ? 'receive' : 'send'}.png";
  Color get backgroundColor => type == IconDollarType.receive
      ? AppTheme.colors.receiveIconBackground
      : AppTheme.colors.sendIconBackground;
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: backgroundColor,
      ),
      width: 48,
      height: 48,
      child: Center(
        child: Image.asset(
          pathImage,
          height: 32,
          width: 32,
        ),
      ),
    );
  }
}
