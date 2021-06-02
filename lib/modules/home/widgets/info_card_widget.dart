import 'package:flutter/material.dart';

import 'package:split_it/modules/home/widgets/icon_dollar_widget.dart';
import 'package:split_it/theme/app_theme.dart';

class InfoCardWidget extends StatelessWidget {
  final double value;
  const InfoCardWidget({Key? key, required this.value}) : super(key: key);

  TextStyle get textStyle => value >= 0
      ? AppTheme.textStyles.infoCardTitle1
      : AppTheme.textStyles.infoCardTitle2;

  IconDollarType get iconDollarType =>
      value >= 0 ? IconDollarType.receive : IconDollarType.send;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 156,
      height: 168,
      decoration: BoxDecoration(
        color: AppTheme.colors.backgroundPrimary,
        borderRadius: BorderRadius.circular(10),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.5),
            blurRadius: 1.8,
          ),
        ],
      ),
      child: Container(
        padding: EdgeInsets.only(left: 20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            IconDollarWidget(type: iconDollarType),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "A receber",
                  style: TextStyle(color: AppTheme.colors.infoCardSubTitle),
                ),
                SizedBox(
                  height: 5,
                ),
                Text(
                  "R\$ ${value}",
                  style: textStyle,
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
