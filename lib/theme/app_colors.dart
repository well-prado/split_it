import 'package:flutter/material.dart';

abstract class AppColors {
  Color get backgroundSecondary;
  Color get backgroundPrimary;
  Color get title;
  Color get button;
  Color get border;
  Color get border2;
  Color get icon;
  Color get infoCardTitle1;
  Color get infoCardSubTitle;
  Color get infoCardTitle2;
  Color get userName;
  Color get receiveIconBackground;
  Color get sendIconBackground;
  Color get eventTileTitle;
  Color get eventTileMoney;
  Color get eventTilePeople;
  Color get eventTileSubtitle;
  Color get divider;
  Color get stepperIndicatorPrimary;
  Color get stepperIndicatorSecondary;
  Color get backButton;
  Color get stepperNextbutton;
}

class AppColorsDefault implements AppColors {
  @override
  Color get backgroundPrimary => Color(0xFFFFFFFF);

  @override
  Color get backgroundSecondary => Color(0xFF40B38C);

  @override
  Color get title => Color(0xFF40B28C);

  @override
  Color get button => Color(0xFF666666);

  @override
  Color get border => Color(0xFFDCE0E6);

  @override
  Color get border2 => Color(0xFFFFFFFF);

  @override
  Color get icon => Color(0xFFF5F5F5);

  @override
  Color get infoCardTitle1 => Color(0xFF40B28C);

  @override
  Color get infoCardTitle2 => Color(0xFFE83F5B);

  @override
  Color get infoCardSubTitle => Color(0xFF666666);

  @override
  Color get userName => Color(0xFFFFFFFF);

  @override
  Color get receiveIconBackground => Color(0xFFE9F8F2);

  @override
  Color get sendIconBackground => Color(0xFFFDECEF);

  @override
  Color get eventTilePeople => Color(0xFFA4B2AE);

  @override
  Color get eventTileMoney => Color(0xFF666666);

  @override
  Color get eventTileTitle => Color(0xFF455250);

  @override
  Color get eventTileSubtitle => Color(0xFF666666);

  @override
  Color get divider => Color(0xFF666666);

  @override
  Color get stepperIndicatorPrimary => Color(0xFF3CAB82);

  @override
  Color get stepperIndicatorSecondary => Color(0xFF666666);

  @override
  Color get backButton => Color(0xFF666666);

  @override
  Color get stepperNextbutton => Color(0xFF455250);
}
