import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:split_it/theme/app_theme.dart';

abstract class AppTextStyles {
  TextStyle get title;
  TextStyle get button;
  TextStyle get userName;
  TextStyle get infoCardTitle1;
  TextStyle get infoCardTitle2;
  TextStyle get eventTileTitle;
  TextStyle get eventTileMoney;
  TextStyle get eventTilePeople;
  TextStyle get eventTileSubtitle;
}

class AppTextStylesDefault implements AppTextStyles {
  @override
  TextStyle get button => GoogleFonts.inter(
        color: AppTheme.colors.button,
        fontSize: 16,
      );

  @override
  TextStyle get title => GoogleFonts.montserrat(
        color: AppTheme.colors.title,
        fontSize: 40,
        fontWeight: FontWeight.w700,
      );

  @override
  TextStyle get userName => GoogleFonts.montserrat(
        color: AppTheme.colors.userName,
        fontSize: 24,
        fontWeight: FontWeight.w700,
      );

  TextStyle get infoCardTitle1 => GoogleFonts.inter(
        color: AppTheme.colors.infoCardTitle1,
        fontSize: 24,
        fontWeight: FontWeight.w600,
      );

  TextStyle get infoCardTitle2 => GoogleFonts.inter(
        color: AppTheme.colors.infoCardTitle2,
        fontSize: 24,
        fontWeight: FontWeight.w600,
      );

  @override
  TextStyle get eventTilePeople => GoogleFonts.inter(
        color: AppTheme.colors.eventTilePeople,
        fontSize: 12,
        fontWeight: FontWeight.w400,
      );

  @override
  TextStyle get eventTileSubtitle => GoogleFonts.inter(
        color: AppTheme.colors.eventTileSubtitle,
        fontSize: 12,
        fontWeight: FontWeight.w400,
      );

  @override
  TextStyle get eventTileMoney => GoogleFonts.inter(
        color: AppTheme.colors.eventTileMoney,
        fontSize: 14,
        fontWeight: FontWeight.w400,
      );

  @override
  TextStyle get eventTileTitle => GoogleFonts.inter(
        color: AppTheme.colors.eventTileTitle,
        fontSize: 16,
        fontWeight: FontWeight.w600,
      );
}
